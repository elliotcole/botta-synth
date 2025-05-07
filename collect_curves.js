autowatch = 1;
inlets = 2;
outlets = 1;

var totalChannels = 0;
var received = 0;
var envelopeLists = [];

// Inlet 0: receives separate lists of curve~ points
function list() {
  if (totalChannels === 0) return;

  envelopeLists[received] = arrayfromargs(arguments);
  //post("receiving envlope " + received + " as " + envelopeLists[received] + ".\n");
  received++;
  // when it's received all of them, send each one out

  if (received === totalChannels) {
    for (var i = 0; i < envelopeLists.length; i++) {
      outlet(0, ["envelope", i].concat(envelopeLists[i]));
    }
    received = 0;
    envelopeLists = new Array(totalChannels);
  }
}

// Inlet 1: receives number of channels
function msg_int(val) {
  if (inlet === 1 && val > 0) {
    totalChannels = val;
    received = 0;
    envelopeLists = new Array(val);
  }
}
