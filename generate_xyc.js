autowatch = 1;

inlets = 1;
outlets = 1;

var numChannels = 4;
var attackVals = [];
var sustainVals = [];
var releaseVals = [];
var curveVals = [];

function chans(n) {
    numChannels = n;
}

function attack() {
    attackVals = arrayfromargs(arguments);
    update();
}

function sustain() {
    sustainVals = arrayfromargs(arguments);
    update();
}

function release() {
    releaseVals = arrayfromargs(arguments);
    update();
}

function curve() {
    curveVals = arrayfromargs(arguments);
    update();
}

function update() {
    clearAll();

    for (var i = 0; i < numChannels; i++) {
        var atk = attackVals[i] || 0;
        var sus = sustainVals[i] || 0;
        var rel = releaseVals[i] || 12;
        var cur = curveVals[i] || 0;

        // point 1
        outlet(0, ["target", i + 1]);
        outlet(0, ["xyc", 0, 0, 0]);

        // point 2
        outlet(0, ["target", i + 1]);
        outlet(0, ["xyc", atk, sus, cur]);

        outlet(0, ["target", i + 1]);
        outlet(0, ["xyc", rel, sus, 0]);

        outlet(0, ["target", i + 1]);
        outlet(0, ["xyc", 1.0, 0, cur*-1]);
    }
}

function clearAll() {

    for (var i = 0; i < numChannels; i++) {
        // clear
        outlet(0, ["target", i + 1]);
        outlet(0, ["clear"]);
    }

}

function debug_me() {
    post("=== Debug Output ===\n");
    for (var i = 0; i < numChannels; i++) {
        post("Channel", i + 1, "\n");
        post("  Attack:", attackVals[i] || 0, "\n");
        post("  Sustain:", sustainVals[i] || 0, "\n");
        post("  Release:", releaseVals[i] || 12, "\n");
        post("  Curve:", curveVals[i] || 0, "\n");
    }
    post("====================\n");
}

