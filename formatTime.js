autowatch = 1;

function msg_int(ms) {
    outlet(0, formatTime(ms));
}

function formatTime(ms) {
    var seconds = ms / 1000.;

    if (ms < 1000.) {
        return ms + " ms";
    } else if (ms < 60000.) {
        return seconds.toFixed(1) + " seconds";
    } else if (ms < 3600000.) {
        var mins = Math.floor(seconds / 60.);
        var secs = Math.floor(seconds % 60.);
        return mins + " minute" + (mins !== 1 ? "s" : "") +
               (secs > 0 ? " " + secs + " second" + (secs !== 1 ? "s" : "") : "");
    } else {
        var hours = Math.floor(seconds / 3600.);
        var mins = Math.floor((seconds % 3600.) / 60.);
        var secs = Math.floor(seconds % 60);
        var result = hours + " hour" + (hours !== 1 ? "s" : "");
        if (mins > 0) {
            result += " " + mins + " minute" + (mins !== 1 ? "s" : "");
        }
        if (secs > 0) {
            result += " " + secs + " second" + (secs !== 1 ? "s" : "");
        }
        return result;
    }
}
