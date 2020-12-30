#!/bin/sh
set -ex

version=$1
if [ -z "$1" ]; then
  version=1.16.1
fi

if [ ! -f server.jar ]; then
  (cd /opt
   java -jar /opt/fabric.jar server -downloadMinecraft -mcversion "$version"
  )
fi

java -Xmx4096M -Xms4096M \
  -jar /opt/fabric-server-launch.jar server
