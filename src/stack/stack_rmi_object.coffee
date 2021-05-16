#  -*- coffee -*-
#
#  file: src/stack/stack_rmi_object.coffee
#  package: ws-rmi-examples
#

{ Stack } = require('./stack')
ws_rmi = require('ws-rmi')

class Stack_RMI_Object extends ws_rmi.Object
  constructor: (options = {}) ->
    stack = new Stack()
    method_names = ['push', 'pop']
    super('stack', stack, method_names, options)

class Stack_RMI_Stub extends ws_rmi.Stub
  constructor: (options = {}) ->
    objects = []
    super(objects, options)

exports.Stack_RMI_Object = Stack_RMI_Object
exports.Stack_RMI_Stub = Stack_RMI_Stub
