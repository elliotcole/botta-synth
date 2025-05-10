// sequenceFilter.js
// JS object to extract the first header value and ignore following sequential messages

inlets = 1;
outlets = 1;

// Number of messages to skip (the sequential values)
var skipCount = 0;

// Handle integer messages
function msg_int(v) {
    if (skipCount > 0) {
        // We're in the skip phase, just decrement
        skipCount--;
    } else {
        // This is the header value -- output it and enter skip phase
        outlet(0, v);
        skipCount = v;
    }
}

// Also handle floats, if needed
function msg_float(v) {
    msg_int(v);
}

// Optional: clear the skip counter manually
function clear() {
    skipCount = 0;
}
