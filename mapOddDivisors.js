autowatch = 1;

inlets = 1;
outlets = 2;

// Define mapping: numeric output and human-readable string
var mapping = {
	"-9": { value: 19, label: "/19" },
	"-8": { value: 17, label: "/17" },
	"-7": { value: 15, label: "/15" },
	"-6": { value: 13, label: "/13" },
	"-5": { value: 11, label: "/11" },
	"-4": { value: 9, label: "/9" },
	"-3": { value: 7, label: "/7" },
  "-2": { value: 5, label: "/5" },
  "-1": { value: 3,  label: "/3" },
	"0": { value: 1,    label: "/1" },
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
