#!/usr/bin/env coffee
#
#  file: src/stack/wss/local_server.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Server } = require('../stack_rmi_server')
options = require('./options').local_server

server = new Stack_RMI_Server(options)

module.exports = server