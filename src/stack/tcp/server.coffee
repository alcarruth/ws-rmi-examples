#!/usr/bin/env coffee
#
#  file: src/stack/tcp/server.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Server } = require('../stack_rmi_server')
{ local_options } = require('./settings').

server = new Stack_RMI_Server(local_options)

module.exports = server
