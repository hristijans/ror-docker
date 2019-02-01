FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /ror-docker
WORKDIR /ror-docker

ADD Gemfile /ror-docker/Gemfile
ADD Gemfile.lock /ror-docker/Gemfile.lock

RUN bundle install

ADD . /ror-docker