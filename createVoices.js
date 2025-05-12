autowatch = 1;

var voices = [];
var createdObjects = []; // stores *all* created patcher objects
 
var fundamental = 100;
var harmonics = [];
var pans = [];
var mode = 0;
var totalDuration = 1000;
var amplitudeLimit = 0.8;  // Default amplitude limit


var deferUpdates = 0;
var deferredParams = {
  fundamental: null,
  harmonics: null,
  frequencies: null,
};

function hard_reset() { // does not work
  var patcher = this.patcher;
  var path = patcher.filepath;

  post("resetting " + patcher + "\n");
  post("loading from " + path + "\n");
  if (path) {
      post("Reloading abstraction from: " + path + "\n");

      // This sends an "open" message to force a refresh
      patcher.parentpatcher.message("script", "sendbox", patcher.varname, "open", path);

      // Close it immediately (it will still be reloaded)
      patcher.parentpatcher.message("script", "sendbox", patcher.varname, "close");
  } else {
      post("Failed to reload: abstraction not saved to disk.\n");
  }


}

function set_defer(val) {
  deferUpdates = val;
}

function set_mode(val) {
  mode = val;
}

function pan() { pans = arrayfromargs(arguments); }

function set_fundamental(val) {
  if (deferUpdates) {
    deferredParams.fundamental = val;
  } else {
    fundamental = val;
    if (mode == 0) {
      updateFrequenciesFromHarmonics();
    }
  }
}

function set_harmonics() {
  if (deferUpdates) {
    deferredParams.harmonics = arrayfromargs(arguments);
  } else {
    harmonics = arrayfromargs(arguments);
    updateFrequenciesFromHarmonics();
  }
}

function set_frequencies() { // mode 2 - sets freqs directly
  if (deferUpdates) {
    deferredParams.frequencies = arrayfromargs(arguments);
  } else {
    var frequencies = arrayfromargs(arguments);
    for (var i = 0; i < voices.length; i++) {
      var freq = frequencies[i] || 440;
      voices[i].freq = freq;
      voices[i].cycle.message("frequency", freq);
    }
  }
}

function updateFrequenciesFromHarmonics() {
  for (var i = 0; i < voices.length; i++) {
    var freq = fundamental * (harmonics[i] || 1);
    voices[i].freq = freq;
    voices[i].cycle.message("frequency", freq);
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
  if (voices.length != n) { // don't re-create voices if you don't have to
    post("re-building synth with " + n + " voices");
    clearVoices();

    // Reset sustain values when the number of voices changes
    allSustainValues = [];

    var x = 50;
    var y = 50;
    var spacing = 200;

    var sumL = null;
    var sumR = null;

    // Counter to track curve~ completions
    var completionCounter = 0;
    var completionTriggers = [];

    for (var i = 0; i < n; i++) {
      var freq = fundamental * (harmonics[i] || 1);

      var cycle = this.patcher.newdefault(x + 60, y, "cycle~", freq);
      var gain = this.patcher.newdefault(x + 60, y + 40, "*~");
      var env = this.patcher.newdefault(x + 200, y, "curve~");
      var panL = this.patcher.newdefault(x + 60, y + 80, "*~");
      var panR = this.patcher.newdefault(x + 360, y + 80, "*~");

      createdObjects.push(cycle, gain, env, panL, panR);

      this.patcher.connect(cycle, 0, gain, 0);
      this.patcher.connect(env, 0, gain, 1);
      this.patcher.connect(gain, 0, panL, 0);
      this.patcher.connect(gain, 0, panR, 0);

      // Track the number of curve~ objects
      completionCounter++;

      // Create trigger for each curve~ completion
      var completionTrigger = this.patcher.newdefault(x + 240, y + 20, "t", "bang");
      createdObjects.push(completionTrigger);
      this.patcher.connect(env, 1, completionTrigger, 0);

      // Store the trigger for later
      completionTriggers.push(completionTrigger);

      if (sumL === null) {
        sumL = panL;
      } else {
        var newSumL = this.patcher.newdefault(x + 5, y + 150, "+~");
        this.patcher.connect(sumL, 0, newSumL, 0);
        this.patcher.connect(panL, 0, newSumL, 1);
        createdObjects.push(newSumL);
        sumL = newSumL;
      }

      if (sumR === null) {
        sumR = panR;
      } else {
        var newSumR = this.patcher.newdefault(x + 360, y + 150, "+~");
        this.patcher.connect(sumR, 0, newSumR, 0);
        this.patcher.connect(panR, 0, newSumR, 1);
        createdObjects.push(newSumR);
        sumR = newSumR;
      }

      voices.push({
        cycle: cycle,
        gain: gain,
        env: env,
        panL: panL,
        panR: panR,
        freq: freq
      });

      y += spacing;

    }

    if (sumL) this.patcher.connect(sumL, 0, outletL, 0);
    if (sumR) this.patcher.connect(sumR, 0, outletR, 0);

    // Create a [uzi] object to collect bangs from all curve~ objects
    var uzi = this.patcher.newdefault(x + 180, y + 400, "uzi", completionCounter);
    createdObjects.push(uzi);

    // Connect each trigger to uzi
    for (var j = 0; j < completionTriggers.length; j++) {
      this.patcher.connect(completionTriggers[j], 0, uzi, 0);
    }

    // Connect the final bang to the named outlet "bang_when_complete"
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
    collectAllAmplitudes();   // Collect the maximum amplitude for each voice
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
      v.panL.message("float", Math.cos(angle));
      v.panR.message("float", Math.sin(angle));

      v.env.message("list", processedCurveData);
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
      channelData[i] = scaledYList[i / 3];
    }
  });

  //post("Applied scaling with factor " + scale + " and compensation for each channel.\n");
}



function anything() {
  var args = arrayfromargs(arguments);
  switch (messagename) {
    case "limit_amplitude":
      amplitudeLimit = args[0];  // Update the amplitude limit
      post("Amplitude limit set to: " + amplitudeLimit + "\n");
      return;
    // Handle other messages here if needed
  }
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

  for (var i = 0; i < voices.length; i++) {
    var v = voices[i];
    post("Voice " + i + " freq: " + v.freq + "\n");
  }
}
