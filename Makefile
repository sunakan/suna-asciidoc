export DOCKER_REPOSITORY=sunakan/suna-asciidoc
export RUBY_DOCKER_TAG=2.7-slim
build-image:
	cd deploy && make build

bash:
	docker run \
    --rm \
    --interactive \
    --tty \
    --mount type=bind,src=${PWD}/docs,dst=/app/docs \
    --mount type=bind,src=${PWD}/dist,dst=/app/dist \
    --workdir="/app" \
    ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG} bash

build-sample:
	docker run \
    --rm \
    --interactive \
    --tty \
    --mount type=bind,src=${PWD}/docs,dst=/app/docs \
    --mount type=bind,src=${PWD}/dist,dst=/app/dist \
    --workdir="/app" \
    ${DOCKER_REPOSITORY}:${RUBY_DOCKER_TAG} \
    bash -c "bundle exec asciidoctor-revealjs --attribute revealjsdir=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.8.0 docs/examples/"
#bash -c "bundle exec asciidoctor-revealjs --attribute revealjsdir=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.8.0 --out-file dist/index.html docs/sample-01.adoc"
