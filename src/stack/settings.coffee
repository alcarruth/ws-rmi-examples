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

  # Unix IPC options
  # Used by server and CLI client
  #
  ipc:
    protocol: 'ws+unix'
    port: null
    host: null
    uid: undefined # defaults to user starting server
    gid: undefined
    mode: 0o660
    path: '/tmp/stack-rmi'
    log_level: 2
    log: log

  # NGINX IPC options
  # Used by nginx to connect to backend socket
  #
  nginx_ipc:
    protocol: 'ws+unix'
    port: null
    host: null
    uid: undefined # defaults to user starting server
    gid: 33        # group 'www-data'
    mode: 0o660
    path: '/tmp/stack-rmi'
    log_level: 2
    log: log

  # Local host options
  # Used by both CLI client and server
  #
  localhost:
    protocol: 'ws'
    port: 8087
    path: ''
    host: 'localhost'
    log_level: 1
    log: log

  # remote client options
  # Used by remote cli client and by nginx
  #
  remote_client:
    protocol: 'wss'
    port: 443
    host: 'alcarruth.net'
    path: '/wss/ws-rmi-example'
    log_level: 1
    log: console.log

  # remote client options
  # Used by remote cli client and by nginx
  # 
  browser_client:
    protocol: 'wss'
    port: 443
    host: 'alcarruth.net'
    path: '/wss/ws-rmi-example'
    log_level: 1
    log: console.log
}


module.exports = {
  options
}
