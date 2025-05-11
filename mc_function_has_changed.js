// Initialize variables
var prevValues = [];  // Stores the previous function values

// Function to handle incoming mc.function values
function list() {
    var currentValues = arrayfromargs(arguments);  // Get the current list of values

    // Call the debug function to log previous and current values
    debug(prevValues, currentValues);

    // Compare current values with the previous values
    if (prevValues.length === 0 || !compareLists(prevValues, currentValues)) {
        // If the values are different or it's the first comparison, send a bang
        outlet(0, "bang");

        // Update previous values to the current ones
        prevValues = currentValues;
    }
}

// Function to compare two lists
function compareLists(list1, list2) {
    if (list1.length !== list2.length) return false;

    for (var i = 0; i < list1.length; i++) {
        if (list1[i] !== list2[i]) return false;
    }
    return true;
}

// Debugging function to log current and previous values
function debug_me(prev, current) {
    post("Previous values: " + prev + "\n");
    post("Current values: " + current + "\n");

    if (compareLists(prev, current)) {
        post("No change detected.\n");
    } else {
        post("Values have changed.\n");
    }
}
