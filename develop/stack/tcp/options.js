// Generated by CoffeeScript 2.5.1
(function() {
  //!/usr/bin/env coffee

  //  settings.coffee

  var log, log_options, options, util;

  util = require('util');

  log_options = {
    colors: true,
    depth: null
  };

  log = function(...xs) {
    var i, len, results, x;
    console.log("\n");
    results = [];
    for (i = 0, len = xs.length; i < len; i++) {
      x = xs[i];
      if (typeof x === 'string') {
        results.push(console.log(x));
      } else {
        results.push(console.log(util.inspect(x, log_options)));
      }
    }
    return results;
  };

  options = {
    // TCP host options
    // Used by both CLI client and server

    protocol: 'wss',
    port: 8087,
    path: '',
    host: 'alcarruth.net',
    log_level: 2,
    log: log
  };

  module.exports = options;

}).call(this);
