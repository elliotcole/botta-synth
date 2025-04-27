autowatch = 1;
outlets = 2;

var time1 = [];
var time2 = [];

function set_time1() {
    var incoming = arrayfromargs(arguments).map(parseFloat);
    var changed = false;

    // Adjust time2 length to match incoming
    if (time2.length > incoming.length) {
        time2 = time2.slice(0, incoming.length);
        changed = true;
    } else if (time2.length < incoming.length) {
        while (time2.length < incoming.length) {
            time2.push(0);
            changed = true;
        }
    }

    time1 = incoming;

    for (var i = 0; i < time1.length; i++) {
        var t1 = time1[i];
        var t2 = time2[i];

        if (isNaN(t2) || t2 < t1) {
            time2[i] = t1;
            changed = true;
        }
    }

    if (changed) {
        outlet(1, time2);
    }
}

function set_time2() {
    var incoming = arrayfromargs(arguments).map(parseFloat);
    var changed = false;

    // Adjust time1 length to match incoming
    if (time1.length > incoming.length) {
        time1 = time1.slice(0, incoming.length);
        changed = true;
    } else if (time1.length < incoming.length) {
        while (time1.length < incoming.length) {
            time1.push(0);
            changed = true;
        }
    }

    for (var i = 0; i < incoming.length; i++) {
        var t1 = time1[i];
        var t2 = incoming[i];

        if (isNaN(t1) || t2 < t1) {
            time2[i] = t1;
            changed = true;
        } else {
            time2[i] = t2;
        }
    }

    if (changed) {
        outlet(1, time2);
    }
}

// Optional debug
function debug_me() {
    post("time1: " + JSON.stringify(time1) + "\n");
    post("time2: " + JSON.stringify(time2) + "\n");
}
