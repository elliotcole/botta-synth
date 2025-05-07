autowatch = 1;

var voices = [];
var createdObjects = []; // stores *all* created patcher objects

var fundamental = 100;
var harmonics = [];
var pans = [];
var mode = 0;
var sustains = [];
var totalDuration = 1000;


function pan() { pans = arrayfromargs(arguments); }
function sustain() { sustains = arrayfromargs(arguments); }


var deferUpdates = 0;
var deferredParams = {
  fundamental: null,
  harmonics: null,
  frequencies: null,
};

function set_defer(val) {
  deferUpdates = val;
}

function set_mode(val) {
  mode = val;
}

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
  clearVoices();

  var x = 50;
  var y = 50;
  var spacing = 200;

  var sumL = null;
  var sumR = null;

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
}


function set_totalDuration(val) {
  totalDuration = val;
}



function envelope() {
  var args = arrayfromargs(arguments);
  var voiceIndex = args[0];
  var curveData = args.slice(1);

  if (voiceIndex < voices.length) {
    var v = voices[voiceIndex];
    if (v && v.env && v.env.valid) {
      // send panning to that voice
      var pan = pans[voiceIndex] || 0;
      var angle = (pan + 1) * 0.25 * Math.PI;
      v.panL.message("float", Math.cos(angle));
      v.panR.message("float", Math.sin(angle));

      var timeScaledCurveData = applyTimeScaleToCurveData.apply(this, curveData); // spread the array is necessary

      // send envelope to that voice
      v.env.message("list", timeScaledCurveData);
      post("voice " + voiceIndex + " got timeScaledCurveData " + timeScaledCurveData + "\n");

    } else {
      post("Invalid envelope target for voice", voiceIndex, "\n");
    }
  } else {
    post("Voice index", voiceIndex, "out of range\n")
  }
}

function applyTimeScaleToCurveData() {
  var curveData = arrayfromargs(arguments);
  post("curveData: " + curveData + "\n");
  post("totalDuration: " + totalDuration + "\n");

  var timeScaledCurveData = [];

  for (var i = 0; i < curveData.length; i++) {
    if (i % 3 === 1) {
      var scaledValue = curveData[i] * totalDuration;
      post("curveData[" + i + "] = " + curveData[i] + ", scaled = " + scaledValue + "\n");

      if (isNaN(scaledValue)) {
        post("ERROR: Encountered NaN value at index " + i + "\n");
      }

      timeScaledCurveData.push(scaledValue);
    } else {
      timeScaledCurveData.push(curveData[i]);
    }
  }
  return timeScaledCurveData;
}


function normalizeSustain(sustainValues) {
  var sustainSum = 0;
  var nonzeroCount = 0;

  for (var i = 0; i < sustainValues.length; i++) {
    var val = sustainValues[i];
    sustainSum += val;
    if (val > 0) nonzeroCount++;
  }

  var average = (nonzeroCount > 0) ? sustainSum / nonzeroCount : 0;
  var scale = (sustainSum > 1) ? 1 / sustainSum : 1;
  var compensation = (average > 0) ? average : 1;

  return sustainValues.map(function(val) {
    return val === 0 ? 0 : (val * scale * compensation);
  });
}

function debug_me() {
  post("🔍 Debug Info:\n");
  post("Fundamental: " + fundamental + "\n");
  post("Harmonics: " + harmonics + "\n");
  post("Total Duration: " + totalDuration + "\n");
  post("Pan: " + asr.pan + "\n");
  post("Voices count: " + voices.length + "\n");
  post("Mode: " + mode + "\n");

  for (var i = 0; i < voices.length; i++) {
    var v = voices[i];
    post("Voice " + i + " freq: " + v.freq + "\n");
  }
}
