#!/bin/bash

#root_dir="/var/www/git/projects/ws-rmi"
root_dir="."

function clean {
  rm -rf ./lib ./stack ./browser
}

function build_lib {
  echo "building ws-rmi-examples/lib"
  mkdir -p ./lib
  coffee -c -o ./lib ./src/lib/*.coffee 2> /dev/null
  coffee -c -o . ./src/index.coffee 2> /dev/null
}

function build_stack_example {
  echo "building ws-rmi-examples/stack"
  mkdir -p ./stack/ipc ./stack/tcp .stack/nginx
  coffee -c -o ./stack/ ./src/stack/*.coffee
  coffee -c -o ./stack/ipc/ ./src/stack/ipc/*.coffee
  coffee -c -o ./stack/tcp/ ./src/stack/tcp/*.coffee
  coffee -c -o ./stack/nginx/ ./src/stack/nginx/*.coffee
}

function browserify {
  node ./node_modules/browserify/bin/cmd.js $@
}

function build_browser {
  echo "building ws-rmi/examples/browser"
  mkdir -p ./browser/js ./browser/css
  cp ./src/html/examples.html ./browser/index.html
  cp ./src/css/* ./browser/css
  browserify ./stack/nginx/client.js > ./browser/js/ws-rmi-example-client.js
}

function build {
  build_lib
  build_stack_example
  build_browser
}
