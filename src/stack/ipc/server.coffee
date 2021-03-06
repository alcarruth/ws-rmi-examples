#!/usr/bin/env coffee
#
#  file: src/examples/stack/ipc/server.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Server } = require('../stack_rmi_server')
{ options } = require('../settings')

server = new Stack_RMI_Server(options.ipc)

module.exports = server
