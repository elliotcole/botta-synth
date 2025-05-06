autowatch = 1;

var currentValue = null;
var timeout = 500; // default ms
var timerTask = null;

function msg_float(val) {
    // If the value changed, reset the timer
    if (val !== currentValue) {
        currentValue = val;
        restartTimer();
    }
}

function settime(ms) {
    timeout = Math.max(1, parseInt(ms));
}

function restartTimer() {
    if (timerTask) {
        timerTask.cancel();
    }

    timerTask = new Task(sendStableValue, this);
    timerTask.schedule(timeout);
}

function sendStableValue() {
    outlet(0, currentValue);
}