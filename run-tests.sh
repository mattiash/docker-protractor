#!/bin/sh

CIDFILE=`mktemp -u`

docker run --cidfile $CIDFILE -v `pwd`/examples:/project mattiash/protractor --baseUrl=https://angularjs.org screenshot-conf.js
CONTAINER=`cat $CIDFILE`
rm $CIDFILE
docker cp $CONTAINER:/output .
docker rm $CONTAINER
