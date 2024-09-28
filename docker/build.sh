#!/bin/bash
set -e
ver=$1
if [ -z "$ver" ]; then
  echo -e "example:\n./build.sh 14.6"
exit
fi
CLEAN="goproxy proxy"
rm -rf $CLEAN
mkdir goproxy

cd goproxy
wget https://github.com/snail007/goproxy/releases/download/v$ver/proxy-linux-amd64.tar.gz
#wget https://mirrors.host900.com/snail007/goproxy/proxy-linux-amd64.tar.gz
tar zxf proxy-linux-amd64.tar.gz
mv proxy ../
cd ..



docker build --no-cache -t rebase/goproxy:v$ver .
docker tag rebase/goproxy:v$ver rebase/goproxy:latest
docker images | grep goproxy
#rm -rf $CLEAN