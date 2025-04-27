autowatch = 1;

inlets = 1;
outlets = 2;

// Define mapping: numeric output and human-readable string
var mapping = {
    "-2": { value: 0.25, label: "1/4" },
    "-1": { value: 0.5,  label: "1/2" },
     "0": { value: 1,    label: "1/1" },
     "1": { value: 2,    label: "2/1" },
     "2": { value: 4,    label: "4/1" }
};

// Respond to a list (e.g., from multislider)
function list() {
    var args = arrayfromargs(arguments);
    var floats = [];
    var labels = [];

    for (var i = 0; i < args.length; i++) {
        var key = String(args[i]);
        if (mapping.hasOwnProperty(key)) {
            floats.push(mapping[key].value);
            labels.push(mapping[key].label);
        } else {
            floats.push(0);      // default fallback value
            labels.push("N/A");  // default fallback label
        }
    }

    outlet(1, labels); // human-readable strings
    outlet(0, floats); // float values
}
