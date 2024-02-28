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


options = {

  # TCP host options
  # Used by both CLI client and server
  #
  protocol: 'wss'
  port: 8087
  path: ''
  host: 'alcarruth.net'
  log_level: 2
  log: log
}

module.exports = options

