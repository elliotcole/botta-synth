autowatch = 1;
outlets = 2;

var numSliders = 1;
var panning = [];
var doAutoInvert = false;

// Set the number of sliders
function size(n) {
    numSliders = Math.max(1, parseInt(n));
    panning = [];
    for (var i = 0; i < numSliders; i++) {
        panning.push(0);
    }
}

// Receive values from multislider
function list() {
    panning = arrayfromargs(arguments);
    numSliders = panning.length;

    if (doAutoInvert) {
        doAutoInvert = false;
        inversion();
    }
}

// Generate incremental panning pattern
function incremental() {
    if (numSliders < 1) return;

    panning = [];
    panning.push(0); // First slider always center

    for (var i = 1; i < numSliders; i++) {
        var norm = i / (numSliders - 1);
        panning.push((i % 2 === 0) ? norm : -norm);
    }

    outlet(0, panning);
}

// Invert current panning values
function inversion() {
    for (var i = 0; i < panning.length; i++) {
        panning[i] *= -1;
    }
    outlet(0, panning);
}

// Reverse the order of values
function mirror() {
    var mirrored = [];
    for (var i = 0; i < panning.length; i++) {
        mirrored[i] = panning[panning.length - 1 - i];
    }
    panning = mirrored;
    outlet(0, panning);
}

// Generate random panning values between -1 and 1
function random() {
    panning = [];
    for (var i = 0; i < numSliders; i++) {
        panning.push(Math.random() * 2 - 1);
    }
    outlet(0, panning);
}

// Set all sliders to 0 (center)
function centered() {
    panning = [];
    for (var i = 0; i < numSliders; i++) {
        panning.push(0);
    }
    outlet(0, panning);
}

// Request multislider's current values
function request() {
    outlet(1, "getvalueof");
}

// Request and invert once received
function autoInvert() {
    doAutoInvert = true;
    outlet(1, "getvalueof");
}