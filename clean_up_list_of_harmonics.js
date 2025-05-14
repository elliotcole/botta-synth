autowatch = 1;

inlets = 2;
outlets = 1;

var numberOfSynths = 0;

// Main logic for processing lists
function processValues(intValues) {
    if (intValues.length === 0 || numberOfSynths <= 0) return;

    var result = [];
    for (var i = 0; i < numberOfSynths; i++) {
        result.push(intValues[i % intValues.length]);
    }

    outlet(0, result);
}

// Inlet 0: multi-token string (e.g. "1 2 3", "4,5,6")
function anything() {
    if (inlet !== 0) return;

    var inputStr = [messagename].concat(arrayfromargs(arguments)).join(" ");
    var tokens = inputStr.split(/[\s,]+/);

    var intValues = tokens
        .map(function(v) { return parseInt(v, 10); })
        .filter(function(v) { return !isNaN(v); });

    processValues(intValues);
}

// Inlet 0: single int (e.g. "5")
function msg_int(v) {
    if (inlet === 0) {
        processValues([v]);
    } else if (inlet === 1) {
        numberOfSynths = v;
    }
}
