#!/usr/bin/env coffee
#
#  file: src/examples/stack/localhost/client.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Client } = require('../stack_rmi_client')
{ options } = require('../settings')

client = new Stack_RMI_Client(options.localhost)

module.exports = client
