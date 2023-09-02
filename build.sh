#!/bin/sh
set -uex pipefail

apk update && apk upgrade
apk add alpine-sdk curl-dev libseccomp-dev libxml2-dev git
git clone https://github.com/eafer/rdrview.git /tmp/rdrview
cd /tmp/rdrview

make && make install
