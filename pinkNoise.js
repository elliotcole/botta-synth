// pink_noise.js

inlets = 3;    // inlet 0 = set_size, inlet 1 = set_start, inlet 2 = set_bend
outlets = 1;   // outlet 0 = generated carve curve list

// Default parameters
var numBins      = 100;     // number of frequency bins to generate
var curveStartHz = 1000.0;  // frequency (Hz) before which no cut occurs
var bendExp      = 1.0;     // exponent shaping the 1/f curve

// Frequency spectrum bounds (logarithmic)
var eqMinFreq = 20;
var eqMaxFreq = 20000;

// ------------------------------------------------
// set_size N — define how many bins to generate
// ------------------------------------------------
function set_size(n) {
    numBins = Math.max(1, parseInt(n, 10));
}

// ------------------------------------------------
// set_start F — define the cut-on frequency in Hz
// Automatically bangs after setting
// ------------------------------------------------
function set_start(f) {
    curveStartHz = Math.max(eqMinFreq, parseFloat(f));
    bang();
}

// ------------------------------------------------
// set_bend E — set exponent for curve bend (<=0 resets to 1)
// Automatically bangs after setting
// ------------------------------------------------
function set_bend(e) {
    bendExp = parseFloat(e);
    if (bendExp <= 0) bendExp = 1.0;
    bang();
}

// ------------------------------------------------
// bang — generate and output the carve curve
//    - log-scale centers
//    - ratio_basic = 1 until start, else start/freq
//    - ratio = ratio_basic^bendExp, clamped [0,1]
// ------------------------------------------------
function bang() {
    var curve = [];
    var minLog   = Math.log(eqMinFreq);
    var maxLog   = Math.log(eqMaxFreq);
    var logRange = maxLog - minLog;

    for (var i = 0; i < numBins; i++) {
        var centerLog = minLog + ((i + 0.5) / numBins) * logRange;
        var freq      = Math.exp(centerLog);

        var basic = (freq <= curveStartHz) ? 1.0 : (curveStartHz / freq);
        var ratio = Math.pow(basic, bendExp);
        ratio = (ratio < 0) ? 0 : (ratio > 1) ? 1 : ratio;

        curve.push(ratio);
    }

    outlet(0, curve);
}
