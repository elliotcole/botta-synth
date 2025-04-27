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

function set_mode(val) {
  mode = val;
}

function set_fundamental(val) {
  fundamental = val;
  if (mode == 0) {
    updateFrequenciesFromHarmonics();
  };
  // if in mode 2, set_frequencies is sent from UI
}

function set_harmonics() {
  harmonics = arrayfromargs(arguments);
  updateFrequenciesFromHarmonics();
}

function updateFrequenciesFromHarmonics() {
  for (var i = 0; i < voices.length; i++) {
    var freq = fundamental * (harmonics[i] || 1);
    voices[i].freq = freq;
    voices[i].cycle.message("frequency", freq);  // might be frequency or number or float
  }
}

function set_frequencies() { // mode 2 - sets freqs directly
  frequencies = arrayfromargs(arguments);
  for (var i = 0; i < voices.length; i++) {
    var freq = frequencies[i] || 440;
    voices[i].freq = freq;
    voices[i].cycle.message("frequency", freq);  // might be frequency or number or float
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

    // Left sum chain
    if (sumL === null) {
      sumL = panL;
    } else {
      var newSumL = this.patcher.newdefault(x + 5, y + 150, "+~");
      this.patcher.connect(sumL, 0, newSumL, 0);
      this.patcher.connect(panL, 0, newSumL, 1);
      createdObjects.push(newSumL);
      sumL = newSumL;
    }

    // Right sum chain
    if (sumR === null) {
      sumR = panR;
    } else {
      var newSumR = this.patcher.newdefault(x + 360, y+150, "+~");
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

  // Connect final sums to outlets
  if (sumL) this.patcher.connect(sumL, 0, outletL, 0);
  if (sumR) this.patcher.connect(sumR, 0, outletR, 0);
}

// Parameter setters
function attack() { asr.attack = arrayfromargs(arguments); }
function release() { asr.release = arrayfromargs(arguments); }
function sustain() { asr.sustain = arrayfromargs(arguments); }
function pan() { asr.pan = arrayfromargs(arguments); }
function curve() {asr.curve = arrayfromargs(arguments);}
function set_totalDuration(val) {totalDuration = val};

var totalDuration = 1000; // default value in ms


function bang() {

  var adjustedSustains = normalizeSustain(asr.sustain);

  for (var i = 0; i < voices.length; i++) {
    var v = voices[i];

    var aNorm = (asr.attack[i] !== undefined) ? asr.attack[i] : 0.2;
    var rNorm = (asr.release[i] !== undefined) ? asr.release[i] : 0.8;

    var a = Math.min(Math.max(aNorm, 0), 1) * totalDuration;
    var r = Math.min(Math.max(rNorm, 0), 1) * totalDuration;
    var s = adjustedSustains[i] || 0.5;

    // Log diagnostic info
    var sustainSum = asr.sustain.reduce(function (acc, val) {
      return acc + (val || 0);
    }, 0);
    var scale = (sustainSum > 1) ? 1 / sustainSum : 1;

    // enforce a < r
    if (a >= r) {
      r = a + 1; // 1 ms minimum duration between points
      if (r > totalDuration) r = totalDuration;
    }

    var curveVal = asr.curve[i] || 0;

    var seg1 = a;         // from 0 to attack time
    var seg2 = r - a;     // from attack to release
    var seg3 = totalDuration - r; // from release to end

    if (s <= 0) {
      // Silent envelope: flat zero for full duration
      var msg = [0, totalDuration, 0];
      // Also mute panning gains
      v.panL.message("float", 0);
      v.panR.message("float", 0);
    } else {
      // Normal 3-segment envelope
      var msg = [
        s, seg1, curveVal,
        s, seg2, 0,
        0, seg3, curveVal * -1
      ];
    }

    var total = seg1 + seg2 + seg3;
    //post("[" + seg1 + "," + seg2 + "," + seg3 + "] = " + total + "\n");
    //post("msg:" + msg + "\n");

    v.env.message("list", msg);

    // Pan calculation
    var pan = asr.pan[i] || 0;
    var angle = (pan + 1) * 0.25 * Math.PI; // back to 0.25
    var gainL = Math.cos(angle);
    var gainR = Math.sin(angle);

    v.panL.message("float", gainL);
    v.panR.message("float", gainR);



  }
}


function normalizeSustain(sustainValues) {
  // Normalize sustain values with perceptual scaling

  var sustainSum = 0;
  var nonzeroCount = 0;

  // Total up the sustain values
  for (var i = 0; i < sustainValues.length; i++) {
    var val = sustainValues[i];
    sustainSum += val;
    if (val > 0) nonzeroCount++;
  }

  var average = (nonzeroCount > 0) ? sustainSum / nonzeroCount : 0;

  // Only scale down if we're above 1
  var scale = (sustainSum > 1) ? 1 / sustainSum : 1;

  // To preserve perceptual level, compensate back up by the average
  var compensation = (average > 0) ? average : 1;

  // Calculate adjusted sustain values
  var adjusted = sustainValues.map(function(val) {
    return val === 0 ? 0 : (val * scale * compensation);
  });

  return adjusted;
}

// Debug
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
