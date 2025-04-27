autowatch = 1;

inlets = 2;
outlets = 1;

var listA = [];
var listB = [];

function list() {
    if (inlet === 0) {
        listA = arrayfromargs(arguments);
    } else {
        listB = arrayfromargs(arguments);
    }

    if (listA.length && listB.length) {
        var result = [];
        var len = Math.min(listA.length, listB.length);
        for (var i = 0; i < len; i++) {
            result.push(listA[i] * listB[i]);
        }
        outlet(0, result);
    }
}
