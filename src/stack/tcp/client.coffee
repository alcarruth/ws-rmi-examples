#!/usr/bin/env coffee
#
#  file: src/examples/stack/tcp/client.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Client } = require('../stack_rmi_client')
{ local_options } = require('./settings').

client = new Stack_RMI_Client(local_options)

module.exports = client
