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
    // Unix IPC options
    // Used by server and CLI client

    ipc: {
      protocol: 'ws+unix',
      port: null,
      host: null,
      uid: void 0, // defaults to user starting server
      gid: void 0,
      mode: 0o660,
      path: '/tmp/stack-rmi',
      log_level: 2,
      log: log
    },
    // NGINX IPC options
    // Used by nginx to connect to backend socket

    nginx_ipc: {
      protocol: 'ws+unix',
      port: null,
      host: null,
      uid: void 0, // defaults to user starting server
      gid: 33, // group 'www-data'
      mode: 0o660,
      path: '/tmp/stack-rmi',
      log_level: 2,
      log: log
    },
    // Local host options
    // Used by both CLI client and server

    localhost: {
      protocol: 'ws',
      port: 8087,
      path: '',
      host: 'localhost',
      log_level: 1,
      log: log
    },
    // remote client options
    // Used by remote cli client and by nginx

    remote_client: {
      protocol: 'wss',
      port: 443,
      host: 'alcarruth.net',
      path: '/wss/ws-rmi-example',
      log_level: 1,
      log: console.log
    },
    // remote client options
    // Used by remote cli client and by nginx

    browser_client: {
      protocol: 'wss',
      port: 443,
      host: 'alcarruth.net',
      path: '/wss/ws-rmi-example',
      log_level: 1,
      log: console.log
    }
  };

  module.exports = {options};

}).call(this);
