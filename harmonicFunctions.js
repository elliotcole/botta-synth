autowatch = 1;

var harmonics = [];
var trueHarmonics = []; // stores unclamped harmonic values
var lastVal = 0; // stores previous scalar value for direction detection
var minVal = 1;
var maxVal = 50;

// === Harmonic Setters ===
function set_harmonics() {
    harmonics = arrayfromargs(arguments);
    trueHarmonics = harmonics.slice(); // sync true values initially
}

function outputHarmonics() {
    outlet(0, harmonics);
}

// === Direction-Aware Increment (Clamped Output, Floating Logic)
function incrementHarmonics(val) {
    var delta = val - lastVal;
    lastVal = val;

    if (delta === 0 || trueHarmonics.length === 0) return;

    var shift = delta > 0 ? 1 : -1;

    // Check if any harmonic has hit the max (only matters when increasing)
    var atCeiling = false;
    for (var i = 0; i < trueHarmonics.length; i++) {
        if (harmonics[i] >= maxVal) {
            atCeiling = true;
            break;
        }
    }

    for (var i = 0; i < trueHarmonics.length; i++) {
        // If increasing and ceiling reached, freeze internal state
        if (shift > 0 && atCeiling) {
            // Do not update trueHarmonics
        } else {
            trueHarmonics[i] += shift;
        }

        // Clamp output for harmonics[]
        harmonics[i] = Math.max(minVal, Math.min(maxVal, trueHarmonics[i]));
    }

    outputHarmonics();
}
// === Reverse ===
function reverse() {
    harmonics.reverse();
    trueHarmonics.reverse();
    outputHarmonics();
}

// === Rotate ===
function rotate(n) {
    n = parseInt(n);
    if (isNaN(n) || harmonics.length === 0) return;

    var len = harmonics.length;
    var rot = ((n % len) + len) % len; // wrap properly for negatives

    function rotateArray(arr) {
        return arr.slice(-rot).concat(arr.slice(0, -rot));
    }

    harmonics = rotateArray(harmonics);
    trueHarmonics = rotateArray(trueHarmonics);
    outputHarmonics();
}

// === Odds / Evens Generators ===
function odds(len) {
    len = Math.max(1, parseInt(len || harmonics.length || 8));
    var list = [];
    for (var i = 0; i < len; i++) {
        list.push(2 * i + 1);
    }
    harmonics = list;
    trueHarmonics = list.slice();
    outputHarmonics();
}

function evens(len) {
    len = Math.max(1, parseInt(len || harmonics.length || 8));
    var list = [];
    for (var i = 0; i < len; i++) {
        list.push(2 * (i + 1));
    }
    harmonics = list;
    trueHarmonics = list.slice();
    outputHarmonics();
}

// === Nearest Odds ===
function nearestOdds() {
    var result = [];

    for (var i = 0; i < harmonics.length; i++) {
        var n = Math.round(harmonics[i]);
        if (n % 2 === 0) {
            n += (harmonics[i] > n) ? 1 : -1;
        }
        result.push(n);
    }

    harmonics = result;
    trueHarmonics = result.slice();
    outputHarmonics();
}

// === Nearest Primes ===
var PRIME_LIST = [
    2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
    73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151,
    157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233,
    239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317,
    331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419,
    421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503,
    509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607,
    613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701,
    709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811,
    821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911,
    919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997
];

function nearestPrime(n) {
    var closest = PRIME_LIST[0];
    var minDiff = Math.abs(n - closest);

    for (var i = 1; i < PRIME_LIST.length; i++) {
        var prime = PRIME_LIST[i];
        var diff = Math.abs(n - prime);
        if (diff < minDiff) {
            minDiff = diff;
            closest = prime;
        } else {
            break;
        }
    }

    return closest;
}

function nearestPrimes() {
    var result = [];

    for (var i = 0; i < harmonics.length; i++) {
        result.push(nearestPrime(harmonics[i]));
    }

    harmonics = result;
    trueHarmonics = result.slice();
    outputHarmonics();
}

// === Halve Evens ===
function halveEvens() {
    var result = [];

    for (var i = 0; i < harmonics.length; i++) {
        var val = harmonics[i];
        result.push(val % 2 === 0 ? val / 2 : val);
    }

    harmonics = result;
    trueHarmonics = result.slice();
    outputHarmonics();
}

// === Harmonic Series ===
function harmonicSeries(len) {
    len = Math.max(1, parseInt(len || harmonics.length || 8));
    var result = [];

    for (var i = 0; i < len; i++) {
        result.push(i + 1);
    }

    harmonics = result;
    trueHarmonics = result.slice();
    outputHarmonics();
}