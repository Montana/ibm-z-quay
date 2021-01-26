#!/bin/bash
echo "$ROBOT_PASSWORD" | docker login -u "$ROBOT_USERNAME" --password-stdin quay.io
docker pull quay.io/montana/ppc64le
