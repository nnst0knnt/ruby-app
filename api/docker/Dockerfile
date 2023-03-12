FROM ruby:3.1.1-alpine3.15

RUN apk update && \
    apk add --no-cache \
    mysql-client \
    mysql-dev \
    bash \
    vim \
    tzdata && \
    apk add --virtual build-packs --no-cache \
    gcc \
    g++ \
    libc-dev \
    libxml2-dev \
    linux-headers \
    make \
    build-base \
    curl-dev

RUN mkdir /myapp
WORKDIR /myapp

ENV RUBY_YJIT_ENABLE=1

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
RUN apk del build-packs

COPY . /myapp

CMD ["rails", "server", "-b", "0.0.0.0"]