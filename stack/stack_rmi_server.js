// Generated by CoffeeScript 2.5.1
(function() {
  // -*- coffee -*-

  //  file: src/stack/stack_rmi_server.coffee
  //  package: ws-rmi-examples

  var Stack_RMI_Object, Stack_RMI_Server, Stack_RMI_Stub, WS_RMI_Connection, WS_RMI_Server, fs;

  fs = require('fs');

  
  ({Stack_RMI_Object, Stack_RMI_Stub} = require('./stack_rmi_object'));

  
  ({WS_RMI_Connection, WS_RMI_Server} = require('ws-rmi/server'));

  Stack_RMI_Server = class Stack_RMI_Server extends WS_RMI_Server {
    constructor(options = {}) {
      var objects;
      //objects = [new Stack_RMI_Object(options)]
      objects = [];
      super(objects, options, WS_RMI_Connection);
    }

  };

  exports.Stack_RMI_Server = Stack_RMI_Server;

}).call(this);
