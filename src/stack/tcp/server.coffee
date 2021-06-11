#!/usr/bin/env coffee
#
#  file: src/stack/tcp/server.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Server } = require('../stack_rmi_server')
{ options } = require('../settings').

server = new Stack_RMI_Server(options.localhost)

module.exports = server
