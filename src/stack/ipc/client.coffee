#!/usr/bin/env coffee
#
#  file: src/examples/stack/ipc/client.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Client } = require('../stack_rmi_client')
{ ipc_options } = require('./settings')

client = new Stack_RMI_Client(ipc_options)

module.exports = client
