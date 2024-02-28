#!/usr/bin/env coffee
#
#  settings.coffee
#

util = require('util')

log_options =
  colors: true
  depth: null

log = (xs...) ->
  console.log("\n")
  for x in xs
    if typeof(x) == 'string'
      console.log(x)
    else
      console.log(util.inspect(x, log_options))

# Unix IPC options
# Used by server and CLI client
#
options = {
  protocol: 'ws+unix'
  port: null
  host: null
  uid: undefined # defaults to user starting server
  gid: 33        # group 'www-data'
  mode: 0o660
  path: '/tmp/stack-rmi'
  log_level: 2
  log: log
}

module.exports = options
