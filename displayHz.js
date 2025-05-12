// eq_report.js

inlets = 2;   // inlet 0 = index, inlet 1 = adjustment value
outlets = 1;  // send the formatted report out outlet 0

// Frequency range constants
var eqMinFreq = 20;
var eqMaxFreq = 20000;

// Number of bins — call set_size() once to match your multislider
var numBins = 100;

// Temp storage for incoming inlet values
var storedIndex = 0;
var storedVal   = 0;

// ------------------------------------------------
// set_size N — set the number of bins
// ------------------------------------------------
function size(n) {
    numBins = Math.max(1, parseInt(n, 10));
    outlet(0, "eq_report: numBins set to " + numBins);
}

// ------------------------------------------------
// Handle integer messages
// ------------------------------------------------
function msg_int(v) {
    if (inlet === 0) {
        storedIndex = parseInt(v, 10);
    } else if (inlet === 1) {
        storedVal = parseInt(v, 10);
        doReport();
    }
}

// ------------------------------------------------
// Handle float messages
// ------------------------------------------------
function msg_float(v) {
    if (inlet === 0) {
        storedIndex = parseInt(v, 10);
    } else if (inlet === 1) {
        storedVal = parseFloat(v);
        doReport();
    }
}

// ------------------------------------------------
// Format a frequency in Hz or kHz
// ------------------------------------------------
function formatFreq(freq) {
    if (freq >= 1000) {
        return (freq / 1000).toFixed(2) + " kHz";
    } else {
        return freq.toFixed(1) + " Hz";
    }
}

// ------------------------------------------------
// Compute and output the report string
// ------------------------------------------------
function doReport() {
    // Clamp the index into valid range
    var idx = storedIndex < 0          ? 0
            : storedIndex >= numBins  ? numBins - 1
            : storedIndex;
    var val = storedVal;

    var lowFreq, highFreq;

    if (numBins === 1) {
        // Single bin covers the full range
        lowFreq  = eqMinFreq;
        highFreq = eqMaxFreq;
    } else {
        // Compute log-space edges for this bin
        var minLog   = Math.log(eqMinFreq);
        var maxLog   = Math.log(eqMaxFreq);
        var logRange = maxLog - minLog;

        var lowLog  = minLog + (idx / numBins) * logRange;
        var highLog = minLog + ((idx + 1) / numBins) * logRange;
        lowFreq  = Math.exp(lowLog);
        highFreq = Math.exp(highLog);
    }

    // Format frequencies
    var lowStr  = formatFreq(lowFreq);
    var highStr = formatFreq(highFreq);

    // Format the adjustment
    var sign = (val >= 0) ? "+" : "";
    var adjStr = sign + val.toFixed(3);

    // Build and send the report
    var report = lowStr + " to " + highStr + " adjusted " + adjStr;
    outlet(0, report);
}
