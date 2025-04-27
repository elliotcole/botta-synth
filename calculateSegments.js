autowatch = 1;

var totalDuration = 0;
var attackArray = [];
var releaseArray = [];

var attackPoints = [];
var releasePoints = [];

function set_total(ms) {
    totalDuration = ms;
    calculateDurations();
}

function set_attack() {
    attackArray = arrayfromargs(arguments);
    calculateDurations();
}

function set_release() {
    releaseArray = arrayfromargs(arguments);
    calculateDurations();
}

function calculateDurations() {
    if (totalDuration <= 0) return;

    var maxLength = Math.max(attackArray.length, releaseArray.length);
    if (maxLength === 0) return;

    attackPoints = [];
    releasePoints = [];

    for (var i = 0; i < maxLength; i++) {
        var a = attackArray[i] || 0;
        var r = releaseArray[i] || 0;

        var sum = a + h + r;

        if (sum === 0) {
            attackPoints.push(0);
            releasePoints.push(0);
        } else {
            attackPoints.push(a * totalDuration);
            releasePoints.push(r * totalDuration);
        }
    }

    outlet(0, ["attack"].concat(attackPoints));
    outlet(0, ["release"].concat(releasePoints));
}

function debug_me() {
    post("attack raw: " + attackArray + "\n");
    post("release raw: " + releaseArray + "\n");

    post("attack: " + attackPoints + "\n");
    post("release: " + releasePoints + "\n");
}
