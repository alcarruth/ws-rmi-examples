# -*- coffee -*-
#
#  file: src/stack/stack_rmi_client.coffee
#  package: ws-rmi-examples
#

# { Stack_RMI_Stub } = require('./stack_rmi_object')

ws_rmi = require('ws-rmi')

class Stack_RMI_Client extends ws_rmi.Client
  constructor: (options = {}) ->
    objects = []
    super(objects, options, ws_rmi.Connection)

exports.Stack_RMI_Client = Stack_RMI_Client
