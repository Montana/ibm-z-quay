#!/bin/bash

ARCH=$(uname -m)

LD_DEBUG=libs docker build -t container/$ARCH -f ./$ARCH/Dockerfile .
docker tag container/$ARCH quay.io/montana/multi-arch:multi-arch-travis-$ARCH
docker login quay.io -u "$ROBOT_USER" -p $ROBOT_TOKEN
docker push quay.io/montana/multi-arch:multi-arch-travis-$ARCH
