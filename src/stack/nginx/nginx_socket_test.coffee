#!/usr/bin/env coffee
#
# file: /src/stack/nginx/nginx_socket_test.coffee
# pachage: ws-rmi-examples
# 

{ NGINX_Socket_App } = require('./nginx_socket')

ns = new NGINX_Socket_App( 'ws_rmi_example', {
  host: 'alcarruth.net'
  port: '433'
  path: 'wss'
  socket_path: '/tmp/stack-rmi'
  })

ns.write_conf()

ns = new NGINX_Socket_App( 'ws_rmi_example', {
  host: 'armazilla.net'
  port: '433'
  path: 'wss'
  socket_path: '/tmp/stack-rmi'
  })

ns.write_conf()






