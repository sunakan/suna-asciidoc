export DOCKER_REPOSITORY=sunakan/suna-asciidoc
export RUBY_DOCKER_TAG=2.7-slim
build:
	cd deploy && make build

bash:
	docker run --rm -it ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG} bash
