# -*- coffee -*-
#
#  file: src/stack/stack_rmi_server.coffee
#  package: ws-rmi-examples
#

fs = require('fs')

{ Stack } = require('./stack')
{ Stack_RMI_Object } = require('./stack_rmi_object')

{
  WS_RMI_Connection
  WS_RMI_Server
  #
} = require('ws-rmi/server')


class Stack_RMI_Server extends WS_RMI_Server
  constructor: (options = {}) ->
    objects = [new Stack_RMI_Object(options)]
    super(objects, options, WS_RMI_Connection)

exports.Stack_RMI_Server = Stack_RMI_Server
