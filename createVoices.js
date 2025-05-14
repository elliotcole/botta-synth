autowatch = 1;

var voices = [];
var createdObjects = []; // stores *all* created patcher objects

var fundamental = 100;
var harmonics = [];
var pans = [];
var mode = 0;
var totalDuration = 1000;
var amplitudeLimit = 0.8;  // Default amplitude limit
var gain = 1;


var randRate    = 100;  // your existing default
var randAmount  = 0;

function set_rand(r) {
  randRate = r;
  for (var i = 0; i < voices.length; i++) {
      voices[i].rand.message("float", randRate);
  }
}

var randAmount = 0;

// set_rand_amount v1 v2 v3 … vn
// where n = voices.length
function set_rand_amount() {
    var vals = arrayfromargs(arguments);
    var numVoices = voices.length;

    // If you only passed one value, broadcast it to all voices:
    if (vals.length === 1) {
        var a = Math.max(0, Math.min(1, vals[0]));
        for (var i = 0; i < numVoices; i++) {
            voices[i].cleanSig.message("float", 1 - a);
            voices[i].dirtySig.message("float",     a);
        }
    }
    // If you passed exactly as many values as voices, use them one-to-one:
    else if (vals.length === numVoices) {
        for (var i = 0; i < numVoices; i++) {
            var amt = Math.max(0, Math.min(1, vals[i]));
            voices[i].cleanSig.message("float", 1 - amt);
            voices[i].dirtySig.message("float",     amt);
        }
    }
    else {
        post("set_rand_amount: expected 1 or " + numVoices +
             " args, got " + vals.length + "\n");
    }
}


function set_mode(val) {
  mode = val;
}

function pan() { pans = arrayfromargs(arguments); }

function set_fundamental(val) {
  fundamental = val;
  if (mode == 0) {
    updateFrequenciesFromHarmonics();
  }
}

function set_harmonics() {
  harmonics = arrayfromargs(arguments);
  updateFrequenciesFromHarmonics();
  //post("setting harmonics to " + harmonics + "\n");
} 

function set_frequencies() { // mode 2 - sets freqs directly
  var frequencies = arrayfromargs(arguments);
  for (var i = 0; i < voices.length; i++) {
    var freq = frequencies[i] || 440;
    voices[i].freq = freq;
    voices[i].cycle.message("frequency", freq);
  }
}


function updateFrequenciesFromHarmonics() {
  for (var i = 0; i < voices.length; i++) {
    var freq = fundamental * (harmonics[i] || 1);
    voices[i].freq = freq;
    voices[i].cycle.message("frequency", freq);
    post("voice", i, "freq", freq, "\n");
  }
}

function clearVoices() {
  for (var i = 0; i < createdObjects.length; i++) {
    if (createdObjects[i] && createdObjects[i].valid) {
      this.patcher.remove(createdObjects[i]);
    }
  }
  voices = [];
  createdObjects = [];
}

var outletL = this.patcher.getnamed("outlet_left");
var outletR = this.patcher.getnamed("outlet_right");

function createVoices(n) {
    if (voices.length !== n) {
        post("re-building synth with " + n + " voices\n");
        clearVoices();
        allSustainValues = [];

        var x = 50, y = 50, spacing = 200;
        var sumL = null, sumR = null;
        var completionCounter = 0, completionTriggers = [];

        for (var i = 0; i < n; i++) {
            var freq = fundamental * (harmonics[i] || 1);

            // — cycle~ oscillator
            var cycle = this.patcher.newdefault(x+60, y, "cycle~", freq);
            createdObjects.push(cycle);

            // — rand~ noise source
            var rand = this.patcher.newdefault(x+60, y+20, "rand~", randRate);
            createdObjects.push(rand);

            // — dirty = cycle~ * rand~
            var randGain = this.patcher.newdefault(x+60, y+40, "*~");
            createdObjects.push(randGain);
            this.patcher.connect(cycle, 0, randGain, 0);
            this.patcher.connect(rand,   0, randGain, 1);

            // — crossfade signals via sig~
            var cleanSig = this.patcher.newdefault(x+40, y+60, "sig~", 1 - randAmount);
            var dirtySig = this.patcher.newdefault(x+40, y+80, "sig~",     randAmount);
            createdObjects.push(cleanSig, dirtySig);

            // — *~ objects for crossfade
            var fadeClean = this.patcher.newdefault(x+60, y+60, "*~");
            var fadeDirty = this.patcher.newdefault(x+60, y+80, "*~");
            var sumFade   = this.patcher.newdefault(x+60, y+100,"+~");
            createdObjects.push(fadeClean, fadeDirty, sumFade);

            // wire crossfade:
            this.patcher.connect(cycle,    0, fadeClean, 0);
            this.patcher.connect(cleanSig, 0, fadeClean, 1);
            this.patcher.connect(fadeClean,0, sumFade,   0);

            this.patcher.connect(randGain, 0, fadeDirty, 0);
            this.patcher.connect(dirtySig, 0, fadeDirty, 1);
            this.patcher.connect(fadeDirty,0, sumFade,   1);

            // — envelope (curve~) & multiply
            var env = this.patcher.newdefault(x+200, y, "curve~");
            createdObjects.push(env);

            var envMul = this.patcher.newdefault(x+200, y+60, "*~");
            createdObjects.push(envMul);
            this.patcher.connect(sumFade, 0, envMul, 0);
            this.patcher.connect(env,     0, envMul, 1);

            // — pan left/right
            var panL = this.patcher.newdefault(x+60,  y+140, "*~");
            var panR = this.patcher.newdefault(x+360, y+140, "*~");
            createdObjects.push(panL, panR);
            this.patcher.connect(envMul, 0, panL, 0);
            this.patcher.connect(envMul, 0, panR, 0);

            // — track curve~ completions
            completionCounter++;
            var completionTrigger = this.patcher.newdefault(x+240, y+20, "t", "bang");
            createdObjects.push(completionTrigger);
            this.patcher.connect(env, 1, completionTrigger, 0);
            completionTriggers.push(completionTrigger);

            // — accumulate sums for L/R
            if (sumL === null) {
                sumL = panL;
            } else {
                var newSumL = this.patcher.newdefault(x+5, y+180, "+~");
                createdObjects.push(newSumL);
                this.patcher.connect(sumL,  0, newSumL, 0);
                this.patcher.connect(panL,  0, newSumL, 1);
                sumL = newSumL;
            }
            if (sumR === null) {
                sumR = panR;
            } else {
                var newSumR = this.patcher.newdefault(x+360, y+180, "+~");
                createdObjects.push(newSumR);
                this.patcher.connect(sumR,  0, newSumR, 0);
                this.patcher.connect(panR,  0, newSumR, 1);
                sumR = newSumR;
            }

            // — store for later control
            voices.push({
                cycle:    cycle,
                rand:     rand,
                randGain: randGain,
                cleanSig: cleanSig,
                dirtySig: dirtySig,
                fadeClean:fadeClean,
                fadeDirty:fadeDirty,
                sumFade:  sumFade,
                env:      env,
                envMul:   envMul,
                panL:     panL,
                panR:     panR,
                freq:     freq
            });

            y += spacing;
        }

        // — connect final sums to your outlets
        if (sumL) this.patcher.connect(sumL, 0, outletL, 0);
        if (sumR) this.patcher.connect(sumR, 0, outletR, 0);

        // — build the uzi & bang_when_complete
        var uzi = this.patcher.newdefault(x+180, y+400, "uzi", completionCounter);
        createdObjects.push(uzi);
        for (var j = 0; j < completionTriggers.length; j++) {
            this.patcher.connect(completionTriggers[j], 0, uzi, 0);
        }
        var bangOutlet = this.patcher.getnamed("bang_when_complete");
        if (bangOutlet) {
            this.patcher.connect(uzi, 0, bangOutlet, 0);
        }
    }
}





function set_totalDuration(val) {
  totalDuration = val;
}

// Global variables
var collectedCurveData = [];
var allSustainValues = [];

// Main envelope function
function envelope() {
  var args = arrayfromargs(arguments);
  var voiceIndex = args[0];
  var curveData = args.slice(1);

  // Collect curveData
  collectedCurveData.push(curveData);

  // If this is the last voice, start processing
  if (collectedCurveData.length === voices.length) {
    //post("last envelope received, beginning processing\n");

    collectAllAmplitudes();   // Collect the maximum amplitude for each voice
    processEQ();
    adjustAmplitudes();       // Adjust the amplitudes based on the limit
    processVoices();          // Process each voice with adjusted amplitudes

    // Clear for next cycle
    collectedCurveData = [];
    allAmplitudes = [];
  }
}


// Step 1: Extract all y values for global amplitude adjustment
function collectAllAmplitudes() {
  allAmplitudes = [];  // Clear previous values
  collectedCurveData.forEach(function(data) {
    // Collect only the y-values (amplitudes)
    var amplitudes = [];
    for (var i = 0; i < data.length; i += 3) {
      amplitudes.push(data[i]);  // Push the y-value (amplitude)
    }
    // Find the maximum amplitude for the channel and add to allAmplitudes
    var maxAmplitude = Math.max.apply(null, amplitudes);
    //post("max amplitude is " + maxAmplitude + "\n");
    allAmplitudes.push(maxAmplitude);
  });
}


// Step 2: Process each voice
function processVoices() {
  for (var vIndex = 0; vIndex < voices.length; vIndex++) {
    var v = voices[vIndex];
    var originalCurveData = collectedCurveData[vIndex];

    if (v && v.env && v.env.valid) {
      var separatedLists = separateLists(originalCurveData);

      // No need to adjust the sustain anymore, as it was handled globally
      var scaledXList = applyTimeScaleToCurveData.apply(this, separatedLists.xList);

      // Recombine (scaledYList is already processed globally)
      var processedCurveData = recombineLists(separatedLists.yList, scaledXList, separatedLists.cList);

      // === Calculate and send panning ===
      var pan = pans[vIndex] || 0;
      var angle = (pan + 1) * 0.25 * Math.PI;
      v.panL.message("float", Math.cos(angle)); // send pan values
      v.panR.message("float", Math.sin(angle));

      //post("sending voice" + vIndex + " curveData " + processedCurveData + "\n");

      v.env.message("list", processedCurveData); // trigger envelope
    } else {
      post("Invalid envelope target for voice", vIndex, "\n");
    }
  }
}



// Step 3: Separate lists into y, x, and c components
function separateLists(originalCurveData) {
  var yList = [];
  var xList = [];
  var cList = [];

  for (var j = 0; j < originalCurveData.length; j += 3) {
    yList.push(originalCurveData[j]);
    xList.push(originalCurveData[j + 1]);
    cList.push(originalCurveData[j + 2]);
  }

  return { yList: yList, xList: xList, cList: cList };
}

// Step 4: Recombine processed lists
function recombineLists(yList, xList, cList) {
  var processedCurveData = [];
  for (var k = 0; k < yList.length; k++) {
    processedCurveData.push(yList[k], xList[k], cList[k]);
  }
  return processedCurveData;
}


// GLOBAL EQ STATE
var eqCurve = [];    // filled by set_eq()
var eqMinFreq = 20;
var eqMaxFreq = 20000;

// --- HANDLER FOR “set_eq” ------------------
function set_eq() {
    eqCurve = arrayfromargs(arguments).map(parseFloat);
}

// --- APPLY EQ TO YOUR CHANNEL DATA ---------
function processEQ() {
    var N = eqCurve.length;
    if (N === 0) return;  // no curve defined

    // precompute log‐space constants
    var minLog   = Math.log(eqMinFreq);
    var maxLog   = Math.log(eqMaxFreq);
    var logRange = maxLog - minLog;

    // collectedCurveData is your array of flat [y,x,c,y,x,c…] lists
    collectedCurveData.forEach(function(channelData, vIndex) {
        // get and clamp this voice’s frequency
        var f = voices[vIndex].freq;
        if (f < eqMinFreq)      f = eqMinFreq;
        else if (f > eqMaxFreq) f = eqMaxFreq;

        // compute log‐bin index
        var idx = Math.floor((Math.log(f) - minLog) / logRange * N);
        idx = (idx < 0) ? 0 : (idx >= N ? N-1 : idx);

        // grab the EQ adjustment
        var adj = eqCurve[idx];

        // multiply it into every y‐value (every 3rd element starting at 0)
        for (var i = 0; i < channelData.length; i += 3) {
          channelData[i] = Math.max(0, channelData[i] * adj);
        }
    });
}




function adjustAmplitudes() {
  // Step 1: Find the maximum amplitude per channel
  var totalAmplitude = 0;
  var peakAmplitudes = [];

  allAmplitudes.forEach(function(maxAmplitude) {
    peakAmplitudes.push(maxAmplitude);
    totalAmplitude += maxAmplitude;
  });

  // Step 2: Calculate scaling factor based on the total amplitude and the amplitude limit
  var scale = amplitudeLimit / totalAmplitude;  // Proportional scale factor

  // Step 3: Calculate compensation factor for each channel based on its peak amplitude
  collectedCurveData.forEach(function(channelData, vIndex) {
    var yList = channelData.filter(function(value, index) {
      return index % 3 === 0;  // Extract y (amplitude) values
    });

    var maxPeak = peakAmplitudes[vIndex];  // Get the peak for this channel
    var compensation = (maxPeak > 0) ? maxPeak / amplitudeLimit : 1;

    // Step 4: Apply the scale and compensation to the y-values (amplitudes)
    var scaledYList = yList.map(function(value) {
      return value === 0 ? 0 : value * scale * compensation;  // Scale and apply compensation
    });

    // Reassign scaled y-values back into the channelData
    for (var i = 0; i < channelData.length; i += 3) {
      channelData[i] = scaledYList[i / 3] * gain; // apply master gain control
    }
  });

  //post("Applied scaling with factor " + scale + " and compensation for each channel.\n");
}



function anything() {
  var args = arrayfromargs(arguments);
  switch (messagename) {
    case "limit_amplitude":
      amplitudeLimit = args[0];  // Update the amplitude limit
      return;
    // Handle other messages here if needed
  }
}

function set_gain(val) {
  gain = val;
  //post("Gain set to: " + amplitudeLimit + "\n");
}

function applyTimeScaleToCurveData() {
  var curveData = arrayfromargs(arguments);

  if (curveData.some(isNaN)) {
    post("ERROR: curveData contains NaN values before scaling.\n");
  }

  var timeScaledCurveData = [];
  for (var i = 0; i < curveData.length; i++) {
    var scaledValue = curveData[i] * totalDuration;

    if (isNaN(scaledValue)) {
      post("ERROR: Encountered NaN value at index " + i + "\n");
    }

    timeScaledCurveData.push(scaledValue);
  }
  return timeScaledCurveData;
}


function debug_me() {
  post("🔍 Debug Info:\n");
  post("Fundamental: " + fundamental + "\n");
  post("Harmonics: " + harmonics + "\n");
  post("Total Duration: " + totalDuration + "\n");
  post("Pan: " + pans + "\n");
  post("Voices count: " + voices.length + "\n");
  post("Mode: " + mode + "\n");
  post("EQ: " + eqCurve + "\n");
  post("Amplitude Limit: " + amplitudeLimit + "\n");
  for (var i = 0; i < voices.length; i++) {
    var v = voices[i];
    post("Voice " + i + " freq: " + v.freq + "\n");
  }
}
