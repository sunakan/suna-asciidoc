#!/bin/bash

set -eu

readonly DOCKER_REPOSITORY=sunakan/suna-asciidoc

docker build . \
  --tag ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG} \
  --build-arg RUBY_DOCKER_TAG=${RUBY_DOCKER_TAG}

echo ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG}
