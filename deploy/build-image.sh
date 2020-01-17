#!/bin/bash

set -eu

docker build ${DOCKER_FILE_LOCATION} \
  --tag ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG} \
  --build-arg RUBY_DOCKER_TAG=${RUBY_DOCKER_TAG}

echo ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG}
