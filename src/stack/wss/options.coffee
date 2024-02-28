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

port = 8087
key_file = '/etc/letsencrypt/live/alcarruth.net/privkey.pem'
cert_file = '/etc/letsencrypt/live/alcarruth.net/fullchain.pem'

options = {

  # Local host server
  #
  local_server:
    protocol: 'wss'
    key_file: key_file
    cert_file: cert_file
    port: port
    path: '/'
    host: 'localhost'
    log_level: 2
    log: log

  # Public server
  #
  public_server:
    protocol: 'wss'
    key_file: key_file
    cert_file: cert_file
    port: port
    path: '/'
    host: 'alcarruth.net'
    log_level: 2
    log: log

  # local client options
  #
  local_client:
    protocol: 'wss'
    port: port
    host: 'localhost'
    path: '/'
    log_level: 1
    log: log

  # public client options
  #
  public_client:
    protocol: 'wss'
    port: port
    host: 'alcarruth.net'
    path: '/'
    log_level: 1
    log: console.log

}

module.exports = options
