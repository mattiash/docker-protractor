#!/bin/sh

google-chrome --version
echo Node version `node --version`
echo Protractor version `protractor --version`

xvfb-run protractor /project/conf.js "$@"
