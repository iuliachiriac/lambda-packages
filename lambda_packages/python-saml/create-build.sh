#!/bin/bash

PACKAGE=${1:-python-saml}
VERSION=${2:-2.2.3}
CONTAINER_NAME="lambda-packages-$PACKAGE"

docker run --rm --name ${CONTAINER_NAME} -v "$PWD":/var/task lambci/lambda:build-python2.7 \
    bash build.sh ${PACKAGE} ${VERSION}

mv "${PACKAGE}-${VERSION}.tar.gz" "python2.7-${PACKAGE}-${VERSION}.tar.gz"
