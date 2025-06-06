autowatch = 1;
inlets = 1;
outlets = 1; // outlet to [text]

function octaveReduce(x) {
    while (x < 1.0) x *= 2;
    while (x >= 2.0) x /= 2;
    return x;
}

function toFraction(x, tol) {
    tol = (typeof tol !== "undefined") ? tol : 0.000001;
    var h1 = 1, h2 = 0, k1 = 0, k2 = 1;
    var b = x;
    while (true) {
        var a = Math.floor(b);
        var temp = h1; h1 = a * h1 + h2; h2 = temp;
        temp = k1; k1 = a * k1 + k2; k2 = temp;
        if (Math.abs(x - h1 / k1) < tol) break;
        b = 1 / (b - a);
    }
    return h1 + "/" + k1;
}

function list() {
    var raw = arrayfromargs(arguments);
    var reduced = [];
    for (var i = 0; i < raw.length; i++) {
        reduced.push(octaveReduce(raw[i]));
    }

    var rounded = [];
    for (var i = 0; i < reduced.length; i++) {
        rounded.push(Math.round(reduced[i] * 1000000) / 1000000);
    }

    var unique = [];
    for (var i = 0; i < rounded.length; i++) {
        if (unique.indexOf(rounded[i]) === -1) {
            unique.push(rounded[i]);
        }
    }

    unique.sort(function(a, b) { return a - b; });

    var output = [];
    for (var i = 0; i < unique.length; i++) {
        output.push(toFraction(unique[i]));
    }

    var finalString = output.join("\n");
    outlet(0, "clear");
    outlet(0, "append", finalString);
}
