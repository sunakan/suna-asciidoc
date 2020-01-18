export DOCKER_REPOSITORY=sunakan/suna-asciidoc
export RUBY_DOCKER_TAG=2.7-slim
build:
	cd deploy && make build

sandbox-space:
	mkdir sandbox-space

bash: sandbox-space
	docker run \
    --rm \
    --interactive \
    --tty \
    --mount type=bind,src=${PWD}/sandbox-space,dst=/app \
    --workdir="/app" \
    ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG} bash
