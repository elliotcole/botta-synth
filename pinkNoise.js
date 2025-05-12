// pink_noise.js

inlets = 2;    // inlet 0 = set_size (number of bins), inlet 1 = set_start (cut-on frequency in Hz)
outlets = 1;   // outlet 0 = generated carve curve list

// Default parameters
var numBins      = 100;     // number of frequency bins to generate
var curveStartHz = 1000.0;  // frequency (Hz) before which no cut occurs

// Frequency spectrum bounds (logarithmic)
var eqMinFreq = 20;
var eqMaxFreq = 20000;

// ------------------------------------------------
// set_size N — define how many bins to generate
// ------------------------------------------------
function size(n) {
    numBins = Math.max(1, parseInt(n, 10));
}

// ------------------------------------------------
// set_start F — define the cut-on frequency in Hz
// ------------------------------------------------
function set_start(f) {
    curveStartHz = parseFloat(f);
}

// ------------------------------------------------
// bang — generate and output the carve curve
//    For each bin, compute its center frequency on a log scale.
//    If freq <= curveStartHz, output 1.0 (no cut).
//    Otherwise, output (curveStartHz / freq), clamped [0,1].
// ------------------------------------------------
function bang() {
    var curve = [];

    // precompute log-space constants
    var minLog   = Math.log(eqMinFreq);
    var maxLog   = Math.log(eqMaxFreq);
    var logRange = maxLog - minLog;

    for (var i = 0; i < numBins; i++) {
        // center frequency of this bin in log-space
        var centerLog = minLog + ((i + 0.5) / numBins) * logRange;
        var freq = Math.exp(centerLog);

        // ratio = 1 until curveStartHz, then  curveStartHz/freq
        var ratio = (freq <= curveStartHz)
                  ? 1.0
                  : curveStartHz / freq;

        // clamp to [0,1]
        if (ratio < 0) ratio = 0;
        else if (ratio > 1) ratio = 1;

        curve.push(ratio);
    }

    outlet(0, curve);
}
