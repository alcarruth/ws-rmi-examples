#!/usr/bin/env coffee
#
#  file: /src/stack/localhost/options.coffee
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

# Local host options
# Used by both CLI client and server
#
options = {
  protocol: 'ws'
  port: 8087
  path: ''
  host: 'localhost'
  log_level: 2
  log: log
}

module.exports = options
