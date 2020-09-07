#!/bin/bash

VERSION=${1:-'1.24.1'}

curl -o "tika-server.jar" "http://mirror.downloadvn.com/apache/tika/tika-server-${VERSION}.jar" \
|| wget -o "tika-server.jar" "http://mirror.downloadvn.com/apache/tika/tika-server-${VERSION}.jar" \
