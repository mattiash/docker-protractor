#!/bin/sh

: "${RESOLUTION:=1024x768x24}"

cd /project
google-chrome --version
echo Node version `node --version`
echo Protractor version `protractor --version`

xvfb-run --server-args="-screen 0 $RESOLUTION" protractor "$@"
