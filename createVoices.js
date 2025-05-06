autowatch = 1;

var voices = [];
var createdObjects = []; // stores *all* created patcher objects

var asr = {
  attack: [],
  release: [],
  sustain: [],
  pan: [],
  curve: []
};

var fundamental = 100;
var harmonics = [];
var mode = 0;

var deferUpdates = 0;
var deferredParams = {
  fundamental: null,
  harmonics: null,
  frequencies: null,
  asr: {
    attack: null,
    release: null,
    sustain: null,
    pan: null,
    curve: null
  }
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

function attack() {
  if (deferUpdates) {
    deferredParams.asr.attack = arrayfromargs(arguments);
  } else {
    asr.attack = arrayfromargs(arguments);
  }
}
function release() {
  if (deferUpdates) {
    deferredParams.asr.release = arrayfromargs(arguments);
  } else {
    asr.release = arrayfromargs(arguments);
  }
}
function sustain() {
  if (deferUpdates) {
    deferredParams.asr.sustain = arrayfromargs(arguments);
  } else {
    asr.sustain = arrayfromargs(arguments);
  }
}
function pan() {
  if (deferUpdates) {
    deferredParams.asr.pan = arrayfromargs(arguments);
  } else {
    asr.pan = arrayfromargs(arguments);
  }
}
function curve() {
  if (deferUpdates) {
    deferredParams.asr.curve = arrayfromargs(arguments);
  } else {
    asr.curve = arrayfromargs(arguments);
  }
}
function set_totalDuration(val) {
  totalDuration = val;
}

var totalDuration = 1000;

function bang() {
  var adjustedSustains = normalizeSustain(asr.sustain);

  for (var i = 0; i < voices.length; i++) {
    var v = voices[i];

    var aNorm = (asr.attack[i] !== undefined) ? asr.attack[i] : 0.2;
    var rNorm = (asr.release[i] !== undefined) ? asr.release[i] : 0.8;

    var minAttack = 10;
    var a = Math.max(minAttack, Math.min(Math.max(aNorm, 0), 1) * totalDuration);

    var minRelease = 5;
    var r = Math.min(Math.max(rNorm, 0), 1) * totalDuration;
    r = Math.max(r, minRelease);
    var s = adjustedSustains[i] || 0.5;

    if (a >= r) {
      r = a + minRelease;
      if (r > totalDuration) r = totalDuration;
    }

    var curveVal = asr.curve[i] || 0;

    var seg1 = Math.max(a, 1);
    var seg2 = Math.max(r - a, 1);
    var seg3 = Math.max(totalDuration - r, 1);

    if (s <= 0) {
      var msg = [0, totalDuration, 0];
      v.panL.message("float", 0);
      v.panR.message("float", 0);
    } else {
      var endCurve = curveVal * -1 || -0.5;
      var msg = [
        s, seg1, curveVal,
        s, seg2, 0,
        0, seg3, endCurve
      ];

      v.env.message("list", msg);

      var pan = asr.pan[i] || 0;
      var angle = (pan + 1) * 0.25 * Math.PI;
      var gainL = Math.cos(angle);
      var gainR = Math.sin(angle);

      v.panL.message("float", gainL);
      v.panR.message("float", gainR);
    }
  }

  // ✅ Apply deferred parameter changes here
  if (deferUpdates) {
    if (deferredParams.fundamental !== null) {
      fundamental = deferredParams.fundamental;
      if (mode == 0) updateFrequenciesFromHarmonics();
      deferredParams.fundamental = null;
    }

    if (deferredParams.harmonics !== null) {
      harmonics = deferredParams.harmonics;
      updateFrequenciesFromHarmonics();
      deferredParams.harmonics = null;
    }

    if (deferredParams.frequencies !== null) {
      var frequencies = deferredParams.frequencies;
      for (var i = 0; i < voices.length; i++) {
        var freq = frequencies[i] || 440;
        voices[i].freq = freq;
        voices[i].cycle.message("frequency", freq);
      }
      deferredParams.frequencies = null;
    }

    for (var param in deferredParams.asr) {
      if (deferredParams.asr[param] !== null) {
        asr[param] = deferredParams.asr[param];
        deferredParams.asr[param] = null;
      }
    }
  }
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
  post("Attack: " + asr.attack + "\n");
  post("Release: " + asr.release + "\n");
  post("Sustain: " + asr.sustain + "\n");
  post("Curve: " + asr.curve + "\n");
  post("Total Duration: " + totalDuration + "\n");
  post("Pan: " + asr.pan + "\n");
  post("Voices count: " + voices.length + "\n");
  post("Mode: " + mode + "\n");

  for (var i = 0; i < voices.length; i++) {
    var v = voices[i];
    post("Voice " + i + " freq: " + v.freq + "\n");
  }
}