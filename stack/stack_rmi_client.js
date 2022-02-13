// Generated by CoffeeScript 2.5.1
(function() {
  // -*- coffee -*-

  //  file: src/stack/stack_rmi_client.coffee
  //  package: ws-rmi-examples

  var Stack_RMI_Client, Stack_RMI_Object, Stack_RMI_Stub, WS_RMI_Client, WS_RMI_Connection;

  
  ({Stack_RMI_Object, Stack_RMI_Stub} = require('./stack_rmi_object'));

  
  ({WS_RMI_Client, WS_RMI_Connection} = require('ws-rmi/client'));

  Stack_RMI_Client = class Stack_RMI_Client extends WS_RMI_Client {
    constructor(options = {}) {
      var objects;
      objects = [new Stack_RMI_Object(options)];
      // objects = []
      super(objects, options, WS_RMI_Connection);
    }

  };

  exports.Stack_RMI_Client = Stack_RMI_Client;

}).call(this);