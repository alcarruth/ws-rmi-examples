// Generated by CoffeeScript 2.5.1
(function() {
  //!/usr/bin/env coffee

  //  file: src/examples/stack/ipc/client.coffee
  //  package: ws-rmi-examples

  var Stack_RMI_Client, client, options;

  ({Stack_RMI_Client} = require('../stack_rmi_client'));

  ({options} = require('../settings'));

  client = new Stack_RMI_Client(options.ipc);

  module.exports = client;

}).call(this);