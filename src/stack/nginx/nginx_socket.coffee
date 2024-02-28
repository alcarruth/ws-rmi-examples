#!/usr/bin/env coffee
#
# file: /src/stack/nginx/nginx_socket.coffee
# package: ws-rmi-examples
#

fs = require('fs')


class NGINX_Socket_App

  constructor: ( @name, options ) ->
    @host = options?.host || 'localhost'
    @port = options?.port || '433'
    @path = options?.path || 'wss'
    @socket_path = options?.socket_path || '/tmp/wss'

  remote_url: => "wss://#{@host}:#{@port}/#{@path}"

  socket_url: => "ws+unix:///#{@socket_path}"

  location_conf: => """
  
    # Websocket server can be accessed with the remote url:
    #  #{@remote_url()}
    #
    # Backend server should be started with the socket url:
    #  #{@socket_url()}
    #
    location /#{@path} {

        proxy_pass http://#{@path}_ipc;  # see upstream #{@path}_ipc below
        
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection $connection_upgrade;
        proxy_set_header Host $host;

        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto https;

        proxy_send_timeout 30d; # keeps connections alive for 30 days.
        proxy_read_timeout 30d; # We'll see!
      }
      """

  upstream_conf: => """
    # This works!
    # Make sure to chgrp www-data #{@socket_path}
    #
    upstream #{@path}_ipc {
      server unix:#{@socket_path};
      # max 64 idle connections
      keepalive 64;
    }
    """

  write_conf: =>
    #app_dir = "/etc/nginx/apps-available/#{@name}"
    app_dir = "apps-available/#{@host}/#{@name}"
    fs.mkdirSync(app_dir, {recursive: true})
    fs.writeFileSync("#{app_dir}/location.conf", @location_conf())
    fs.writeFileSync("#{app_dir}/upstream.conf", @upstream_conf())

    
module.exports = { NGINX_Socket_App }

