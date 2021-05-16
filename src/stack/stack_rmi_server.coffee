# -*- coffee -*-
#
#  file: src/stack/stack_rmi_server.coffee
#  package: ws-rmi-examples
#

fs = require('fs')

{ Stack } = require('./stack')
{ Stack_RMI_Object } = require('./stack_rmi_object')

ws_rmi = require('ws-rmi')

class Stack_RMI_Server extends ws_rmi.Server
  constructor: (options = {}) ->
    objects = [new Stack_RMI_Object(options)]
    super(objects, options, ws_rmi.Connection)

exports.Stack_RMI_Server = Stack_RMI_Server
