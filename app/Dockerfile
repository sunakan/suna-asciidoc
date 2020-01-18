ARG RUBY_DOCKER_TAG
FROM ruby:${RUBY_DOCKER_TAG}

WORKDIR /app

RUN apt update \
  && apt install -y \
    git \
    make

COPY Gemfile* ./

RUN bundle install

COPY *.sh ./
