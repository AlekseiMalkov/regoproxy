#!/bin/bash
set -e
ver=$1
if [ -z "$ver" ]; then
  echo -e "example:\n./build.sh 4.9"
exit
fi
CLEAN="goproxyadmin proxy-admin"
rm -rf $CLEAN
mkdir goproxyadmin

cd goproxyadmin
wget https://github.com/snail007/proxy_admin_free/releases/download/v$ver/proxy-admin_linux-amd64.tar.gz
tar zxf proxy-admin_linux-amd64.tar.gz
mv proxy-admin ../
cd ..


docker build --no-cache -t rebase/goproxy-admin:v$ver .
# docker tag rebase/goproxy:v$ver rebase/goproxy:latest
# docker images | grep goproxy
# #rm -rf $CLEAN