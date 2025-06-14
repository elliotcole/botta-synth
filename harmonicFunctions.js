autowatch = 1;
inlets = 1;
outlets = 2;

var harmonics = [];
var lastVal = 0;
var minVal = 1;
var maxVal = 50;

// === Set Slider Range ===
function setminmax() {
    var minmax = arrayfromargs(arguments);
    minVal = minmax[0];
    maxVal = minmax[1];
}

// === Output with Range Check ===
function enforceRangeAndOutput() {
    if (harmonics.length === 0) return;

    var minH = Math.min.apply(null, harmonics);
    var maxH = Math.max.apply(null, harmonics);

    if (minH < minVal || maxH > maxVal) {
        outlet(1, [Math.min(minH, minVal), Math.max(maxH, maxVal)]);
    }

	outlet(0, ["list"].concat(harmonics));
}

// === Resize based on max value ===
function resizeToFit() {
    if (harmonics.length === 0) return;

    var maxH = Math.max.apply(null, harmonics);
    outlet(1, [minVal, maxH]);
}

// === Harmonic Setters ===
function set_harmonics() {
    harmonics = arrayfromargs(arguments);
	post("harmonics: " + harmonics + "\n");
}

// === Direction-Aware Increment ===
function incrementHarmonics(val) {
    var delta = val - lastVal;
    lastVal = val;

    if (delta === 0 || harmonics.length === 0) return;

    var shift = delta > 0 ? 1 : -1;

    for (var i = 0; i < harmonics.length; i++) {
        harmonics[i] += shift;
    }

    enforceRangeAndOutput();
}


// === Reverse ===
function reverse() {
    harmonics.reverse();
    enforceRangeAndOutput();
}

// === Rotate ===
function rotate(n) {
    n = parseInt(n);
    if (isNaN(n) || harmonics.length === 0) return;

    var len = harmonics.length;
    var rot = ((n % len) + len) % len;

    function rotateArray(arr) {
        return arr.slice(-rot).concat(arr.slice(0, -rot));
    }

    harmonics = rotateArray(harmonics);
    enforceRangeAndOutput();
}

// === Odds / Evens ===
function odds(len) {
    len = Math.max(1, parseInt(len || harmonics.length || 8));
    harmonics = [];
    for (var i = 0; i < len; i++) {
        harmonics.push(2 * i + 1);
    }
    enforceRangeAndOutput();
}

function evens(len) {
    len = Math.max(1, parseInt(len || harmonics.length || 8));
    harmonics = [];
    for (var i = 0; i < len; i++) {
        harmonics.push(2 * (i + 1));
    }
    enforceRangeAndOutput();
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
    enforceRangeAndOutput();
}

// === Nearest Primes ===
var PRIME_LIST = [
    1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
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

function primes() {
    var n = harmonics.length;
	post("harmonics length " + n + "\n");
	var needed_primes = PRIME_LIST.slice(0, n);
	post("selecting primes " + needed_primes + "\n");
    harmonics = needed_primes;
    enforceRangeAndOutput();
}

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
    enforceRangeAndOutput();
}

// === Halve Evens ===
function halveEvens() {
    var result = [];

    for (var i = 0; i < harmonics.length; i++) {
        var val = harmonics[i];
        result.push(val % 2 === 0 ? val / 2 : val);
    }

    harmonics = result;
    enforceRangeAndOutput();
}

// === Harmonic Series ===
function harmonicSeries(len) {
    len = Math.max(1, parseInt(len || harmonics.length || 8));
    harmonics = [];
    for (var i = 0; i < len; i++) {
        harmonics.push(i + 1);
    }
    enforceRangeAndOutput();
}
