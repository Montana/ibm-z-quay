#!/bin/bash
echo "$ROBOT_PASSWORD" | docker login -u "$ROBOT_USERNAME" --password-stdin quay.io
docker push quay.io/montana/s390x2
