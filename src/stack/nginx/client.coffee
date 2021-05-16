#!/usr/bin/env coffee
#
#  file: src/stack/nginx/client.coffee
#  package: ws-rmi-examples
#

{ Stack_RMI_Client } = require('../stack_rmi_client')
{ remote_options } = require('./settings')

client = new Stack_RMI_Client(remote_options)

window.client = client
