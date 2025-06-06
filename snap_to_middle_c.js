autowatch = 1;
inlets = 1;
outlets = 1;

var middleC = 261.63;

function msg_float(freq) {
    var f = freq;

    // Multiply or divide by 2 until closest to middleC
    while (f < middleC / Math.sqrt(2)) {
        f *= 2;
    }
    while (f > middleC * Math.sqrt(2)) {
        f /= 2;
    }

    outlet(0, f);
}
