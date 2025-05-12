// mc_function_transform.js
// JavaScript logic for transforming multi-channel mc.function data in Max/MSP

inlets = 1;
outlets = 1;

var displayChannel = 1;

function display_chan(n) {
  displayChannel = n;
  outlet(0, ["displaychan"], displayChannel)
}

function makeFilledArray(length, value) {
  var arr = [];
  for (var i = 0; i < length; i++) arr[i] = value;
  return arr;
}

function resizeArray(arr, length, defaultValue) {
  var newArr = arr.slice(0, length);
  while (newArr.length < length) newArr.push(defaultValue);
  return newArr;
}

function dumpChannel(n) {
  if (n < 0 || n >= voices.length) {
    post("ERROR: Invalid channel index.\n");
    return;
  }

  var channelData = voices[n];  // Assuming the voice data is structured this way.
  if (!channelData || !channelData.curveData) {
    post("ERROR: No data available for channel " + n + ".\n");
    return;
  }

  var points = channelData.curveData;  // Array of [y, x, c] for the channel.
  for (var i = 0; i < points.length; i++) {
    var y = points[i][0];
    var x = points[i][1];
    var c = points[i][2];
    outlet(1, y, x, c);  // Send each point as an 'xyz' message.
  }
}

function McFunctionTransform(sourceFunction, numChannels) {
  this.sourceFunction = sourceFunction;
  this.numChannels = numChannels;
  this.startPoints = makeFilledArray(numChannels, 0);
  this.endPoints = makeFilledArray(numChannels, 1);
  this.repetitions = makeFilledArray(numChannels, 1);
  this.scales = makeFilledArray(numChannels, 0);
  this.curves = makeFilledArray(numChannels, 0);
}

McFunctionTransform.prototype.updateSource = function(sourceFunction, numChannels) {
  this.sourceFunction = sourceFunction;
  this.numChannels = numChannels;
};

McFunctionTransform.prototype.setStartPoints = function(values) { this.startPoints = values; };
McFunctionTransform.prototype.setEndPoints = function(values)   { this.endPoints = values; };
McFunctionTransform.prototype.setRepetitions = function(values)  { this.repetitions = values; };
McFunctionTransform.prototype.setScales = function(values)       { this.scales = values; };
McFunctionTransform.prototype.setCurves = function(values)       { this.curves = values; };

McFunctionTransform.prototype.transform = function() {
  var self = this;
  return this.sourceFunction.map(function(channelData, channelIndex) {
    // Ensure channelData begins at x=0 and ends at x=1
    var data = channelData.slice();
    if (data.length === 0) {
      data = [[0, 0, 0], [1, 0, 0]];
    } else {
      if (data[0][0] !== 0) data.unshift([0, 0, 0]);
      if (data[data.length - 1][0] !== 1) data.push([1, 0, 0]);
    }

    var start = self.startPoints[channelIndex];
    var end = self.endPoints[channelIndex];
    var reps = self.repetitions[channelIndex];
    if (typeof reps !== 'number' || reps < 1) reps = 1;
    var yScale = self.scales[channelIndex];
    var curveScale = self.curves[channelIndex];
    var duration = end - start;

    // Handle the case where x = 0 and y != 0 to avoid popping
    if (data[0][0] === 0 && data[0][1] !== 0) {
      // Adjust x to be a very small value near 0, and add a new [0, 0, 0] point
      data[0][0] = 0.000001;
      data.unshift([0, 0, 0]);  // Add a new point at [0, 0, 0]
    }

    // Separate endpoints and inner breakpoints
    var fixedStart = data[0];
    var fixedEnd = data[data.length - 1];
    var inner = data.slice(1, data.length - 1);

    // Transform inner X coordinates
    var adjustedInner = inner.map(function(pt) {
      return [start + (pt[0] * duration), pt[1], pt[2]];
    });
    var adjusted = [fixedStart].concat(adjustedInner).concat([fixedEnd]);

    // Repeat segments
    var repeated = [];
    for (var r = 0; r < reps; r++) {
      adjusted.forEach(function(pt) {
        repeated.push([(pt[0] / reps) + (r / reps), pt[1], pt[2]]);
      });
    }

    // Apply Y scaling and alternating curve adjustment, skipping flat Y segments but respecting original endpoints
    var result = [];
    var toggle = 0;
    var prevY = null;
    var adjustedLen = adjusted.length;

    for (var i = 0; i < repeated.length; i++) {
      var pt = repeated[i];
      var xVal = pt[0], yVal = pt[1], cVal = pt[2];

      // Determine Y scaling: only for non-endpoint segments
      var indexInAdjusted = i % adjustedLen;
      var isEndpoint = (indexInAdjusted === 0 || indexInAdjusted === adjustedLen - 1);
      var newY;
      if (isEndpoint) {
        newY = yVal; // preserve original endpoint Y
      } else {
        newY = Math.min(1, Math.max(0, yVal + (yScale * yVal)));
      }

      // Determine if this segment is flat (same Y as previous)
      var isFlat = (prevY !== null && yVal === prevY);
      var newC;
      if (isFlat) {
        newC = cVal; // skip curve adjustment for flat segments
      } else {
        // non-flat: alternate curve adjustment
        var direction = (toggle % 2 === 0) ? 1 : -1;
        newC = cVal + (direction * curveScale);
        newC = Math.max(-1, Math.min(1, newC));
        toggle++;
      }

      result.push([xVal, newY, newC]);
      prevY = yVal;
    }

    return result;
  });
};




McFunctionTransform.prototype.outputTransformed = function() {
  var transformedData = this.transform();
  transformedData.forEach(function(channelPoints, ch) {
    outlet(0, ["target", ch + 1]);
    outlet(0, ["clear"]);
    channelPoints.forEach(function(pt) {
      outlet(0, ["xyc", pt[0], pt[1], pt[2]]);
    });
  });
  outlet(0, ["displaychan"], displayChannel)
};

McFunctionTransform.prototype.debug = function() {
  post("--- Transformer Debug Info ---\n");
  post("Num Channels: " + this.numChannels + "\n");
  post("Start Points: " + this.startPoints + "\n");
  post("End Points: " + this.endPoints + "\n");
  post("Repetitions: " + this.repetitions + "\n");
  post("Y Scales: " + this.scales + "\n");
  post("Curve Adjustments: " + this.curves + "\n");
  post("Source Function:\n");
  this.sourceFunction.forEach(function(chData, idx) {
    post(" Channel " + idx + ": " + JSON.stringify(chData) + "\n");
  });
  post("-----------------------------\n");
};

// Patch state
var numberOfChannels = 0;
var currentChannelIndex = -1;
var pendingChannelData = [];
var transformer = null;
 

function chans(n) {
  // Adjust channel count and pending data
  numberOfChannels = n;
  currentChannelIndex = -1;  // Reset to -1 to indicate no channel selected
  pendingChannelData = [];  // Clear the existing data
  for (var i = 0; i < n; i++) {
    pendingChannelData.push([]);  // Initialize an empty array for each channel
  }
  // Resize existing transformation arrays
  if (transformer) {
    transformer.startPoints = resizeArray(transformer.startPoints, n, 0);
    transformer.endPoints = resizeArray(transformer.endPoints, n, 1);
    transformer.repetitions = resizeArray(transformer.repetitions, n, 1);
    transformer.scales = resizeArray(transformer.scales, n, 0);
    transformer.curves = resizeArray(transformer.curves, n, 0);
    transformer.numChannels = n;
    post("transform arrays resized to " + n + " channels\n");
  }
}


function anything() {
  var args = arrayfromargs(arguments);
  switch (messagename) {
    case "chans":
      chans.apply(this, args);
      return;
    case "clear":
      pendingChannelData = [];
      for (var i = 0; i < numberOfChannels; i++) {
        pendingChannelData.push([]);
      }
      currentChannelIndex = -1;
      return;
    case "chan":
      var chanNum = args[0];
      if (chanNum === 1) {
        pendingChannelData = [];
        for (var i = 0; i < numberOfChannels; i++) {
          pendingChannelData.push([]);
        }
      }
      // Ensure valid channel index
      currentChannelIndex = (chanNum > 0 && chanNum <= numberOfChannels) ? (chanNum - 1) : -1;
      return;
    case "done":
      done();
      return;
    case "start":
      start.apply(this, args);
      return;
    case "end":
      end.apply(this, args);
      return;
    case "repetitions":
      repetitions.apply(this, args);
      return;
    case "scale":
      scale.apply(this, args);
      return;
    case "curves":
      curves.apply(this, args);
      return;
  }

  if (currentChannelIndex >= 0 && currentChannelIndex < numberOfChannels && args.length === 3) {
    pendingChannelData[currentChannelIndex].push([args[0], args[1], args[2]]);
  } else {
    post("ERROR: Invalid channel index or data format.\n");
  }
}


function done() {
  // post("done() called\n");
  // Always run transform for all channels
  if (!transformer) {
    transformer = new McFunctionTransform(pendingChannelData, numberOfChannels);
    post("transformer created\n");
  } else {
    transformer.updateSource(pendingChannelData, numberOfChannels);
  }
  transformer.outputTransformed();
  pendingChannelData = [];
  for (var j = 0; j < numberOfChannels; j++) pendingChannelData.push([]);
}

function start() { var args = Array.prototype.slice.call(arguments); if (transformer) { transformer.setStartPoints(args); transformer.outputTransformed(); } }
function end()   { var args = Array.prototype.slice.call(arguments); if (transformer) { transformer.setEndPoints(args);   transformer.outputTransformed(); } }
function repetitions() { var args = Array.prototype.slice.call(arguments); if (transformer) { transformer.setRepetitions(args); transformer.outputTransformed(); } }
function scale() { var args = Array.prototype.slice.call(arguments); if (transformer) { transformer.setScales(args); transformer.outputTransformed(); } }
function curves() { var args = Array.prototype.slice.call(arguments); if (transformer) { transformer.setCurves(args); transformer.outputTransformed(); } }
function bang() { if (transformer) transformer.outputTransformed(); }
function debug_me() { if (transformer) transformer.debug(); else post("Transformer not initialized.\n"); }
