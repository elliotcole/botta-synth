autowatch = 1;

var fundamental = 440;

function setfundamental(f) {
    if (f > 0) {
        fundamental = f;
    }
}

function msg_float(inputFreq) {
    if (inputFreq <= 0 || fundamental <= 0) {
        outlet(0, "Invalid input");
        return;
    }

    var ratio = inputFreq / fundamental;
    var simplified = simplifyRatio(ratio, 1e-4, 100);
    outlet(0, simplified);
}

function simplifyRatio(ratio, tolerance, maxDenominator) {
    var bestNumer = 1;
    var bestDenom = 1;
    var minError = Math.abs(ratio - bestNumer / bestDenom);

    for (var denom = 1; denom <= maxDenominator; denom++) {
        var numer = Math.round(ratio * denom);
        var approx = numer / denom;
        var error = Math.abs(ratio - approx);

        if (error < minError - tolerance) {
            bestNumer = numer;
            bestDenom = denom;
            minError = error;
        }

        if (error < tolerance) break;
    }

    return bestNumer + ":" + bestDenom;
}