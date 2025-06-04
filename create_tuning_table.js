autowatch = 1;
inlets = 1;
outlets = 2; // outlet 0 = full list, outlet 1 = coll entries

var fundamental = 440.0;
var ratios = [];

function set_fundamental(freq) {
    //post("fundamental: " + freq + "\n");
    fundamental = parseFloat(freq);
    recompute();
}

function set_ratios() {
    ratios = arrayfromargs(arguments).map(parseFloat);
    //post("ratios: " + ratios + "\n");
    recompute();
}

function recompute() {
    if (ratios.length === 0 || !fundamental) return;

    // Step 1: Octave reduce to [1, 2)
    var reduced = ratios.map(function(r) {
        while (r >= 2) r /= 2;
        while (r < 1) r *= 2;
        return r;
    });

    // Step 2: Sort ascending
    reduced.sort(function(a, b) { return a - b; });

    // Step 3: Deduplicate (epsilon tolerance)
    var deduped = [];
    var epsilon = 0.0001;
    for (var i = 0; i < reduced.length; i++) {
        if (i === 0 || Math.abs(reduced[i] - reduced[i - 1]) > epsilon) {
            deduped.push(reduced[i]);
        }
    }

    // Step 4: Determine nearest octave for middle C
    var midiMiddleC = 60;
    var middleCFreq = 261.626;
    var baseMultiplier = Math.pow(2, Math.round(Math.log(middleCFreq / fundamental) / Math.LN2));
    var centerFundamental = fundamental * baseMultiplier;

    // Step 5: Build 128-note table
    var table = new Array(128);
    var groupSize = deduped.length;

    for (var i = 0; i < 128; i++) {
        var degree = i - midiMiddleC;
        var octave = Math.floor(degree / groupSize);
        var index = ((degree % groupSize) + groupSize) % groupSize;
        var freq = centerFundamental * deduped[index] * Math.pow(2, octave);
        table[i] = freq;

        // Output for coll: "index, value;"
		outlet(1, [i, freq]);
    }

    // Output full list as Max list
    outlet(0, table);
}
