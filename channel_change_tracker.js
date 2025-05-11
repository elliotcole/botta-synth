var number_of_synths = 3;  // Current number of synths
var old_number_of_synths = number_of_synths;  // Previous number of synths

function set_number_of_synths(n) {
  // Check if the number of synths has increased
  if (n > old_number_of_synths) {
    // Output the new channels
    for (var i = old_number_of_synths + 1; i <= n; i++) {
      outlet(0, i);  // Output the new channel number
    }
  }
  // Update the old_number_of_synths to the new value
  old_number_of_synths = n;
}

function anything() {
  var args = arrayfromargs(arguments);
  if (messagename === "set_number_of_synths") {
    set_number_of_synths(args[0]);  // Set the new number of synths
  }
}
