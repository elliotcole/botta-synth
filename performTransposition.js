autowatch = 1;

inlets = 3;
outlets = 2; // Outlet 0: Result list, Outlet 1: Human-readable fractions

var listA = [];
var listB = [];
var listC = [];

function gcd(a, b) {
    return b ? gcd(b, a % b) : Math.abs(a);
}

function toFraction(decimal, tolerance) {
    // Set a default tolerance if none is provided
    tolerance = tolerance || 0.000001;

    if (decimal === 0) return "0";
    var sign = decimal < 0 ? "-" : "";
    decimal = Math.abs(decimal);

    var numerator = 1, denominator = 1, lower_n = 0, lower_d = 1, upper_n = 1, upper_d = 0;
    while (true) {
        var mediant_n = lower_n + upper_n;
        var mediant_d = lower_d + upper_d;

        if (mediant_d * (decimal + tolerance) < mediant_n) {
            upper_n = mediant_n;
            upper_d = mediant_d;
        } else if (mediant_n < (decimal - tolerance) * mediant_d) {
            lower_n = mediant_n;
            lower_d = mediant_d;
        } else {
            numerator = mediant_n;
            denominator = mediant_d;
            break;
        }
    }

    var gcdValue = gcd(numerator, denominator);
    return sign + (numerator / gcdValue) + "/" + (denominator / gcdValue);
}

function list() {
    if (inlet === 0) {
        listA = arrayfromargs(arguments);
    } else if (inlet === 1) {
        listB = arrayfromargs(arguments);
    } else if (inlet === 2) {
        listC = arrayfromargs(arguments);
    }

    if (listA.length && listB.length && listC.length) {
        var result = [];
        var fractions = [];
        var len = Math.min(listA.length, listB.length, listC.length);
        for (var i = 0; i < len; i++) {
            var value = listA[i] * listB[i] / listC[i];
            result.push(value);
            fractions.push(toFraction(value, 0.000001));
        }
        outlet(0, result);
        outlet(1, fractions);
    }
}
