#!/bin/bash
#
# package: ws-rmi-examples
# file: /bin/defs.sh
#

bin_dir=$(dirname $0)
. ${bin_dir}/pkg_info

pkg_info ${0}

echo pkg_root: ${pkg_root}
echo pkg_name: ${pkg_name}
echo pkg_branch: ${pkg_branch}

src="${pkg_root}/src"
build="${pkg_root}/${pkg_branch}"

function clean {
  echo "cleaning ${build}"
  rm -rf ${build}
  mkdir -p ${build}/stack/ipc
  mkdir -p ${build}/stack/tcp
  mkdir -p ${build}/stack/nginx
  mkdir -p ${build}/stack/browser
  mkdir -p ${build}/browser/js
  mkdir -p ${build}/browser/css
}

function build_stack_example {
  echo "building ${build}/stack"
  coffee -c -o ${build}/stack/ ${src}/stack/*.coffee
  coffee -c -o ${build}/stack/ipc/ ${src}/stack/ipc/*.coffee
  coffee -c -o ${build}/stack/tcp/ ${src}/stack/tcp/*.coffee
  coffee -c -o ${build}/stack/nginx/ ${src}/stack/nginx/*.coffee
  coffee -c -o ${build}/stack/browser/ ${src}/stack/browser/*.coffee
}

function browserify {
  node ${pkg_root}/node_modules/browserify/bin/cmd.js $@
}

function build_browser {
  echo "building ${build}/browser"
  cp ${src}/html/examples.html ${build}/browser/index.html
  cp ${src}/css/* ${build}/browser/css
  browserify ${build}/stack/browser/client.js > ${build}/browser/js/ws-rmi-example-client.js
}

function build {
  clean
  coffee -c -o ${build}/ ${src}/*.coffee
  build_stack_example
  build_browser
}
