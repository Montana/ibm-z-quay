#!/bin/bash
#text-base

set -e

sudo apt-get install -yqq gettext-base

FILE="${1}"
THIS_DIR=$(dirname "${BASH_SOURCE[0]}")
TRAVIS_COMMIT="${TRAVIS_COMMIT:=$(git rev-parse HEAD)}"
export TRAVIS_COMMIT
GIT_REMOTE="$(git remote get-url origin)"
export GIT_REMOTE

NODE_USER_ID="$(docker run -t node:lts-alpine /usr/bin/id -u node | tr -d '\r' | tr -d '\n')"
export NODE_USER_ID
NODE_GROUP_ID="$(docker run -t node:lts-alpine /usr/bin/id -g node | tr -d '\r' | tr -d '\n')"
export NODE_GROUP_ID

envsubst <"${THIS_DIR}/viewTemplate.json" >/tmp/view.json

npx mustache /tmp/view.json "${FILE}"
