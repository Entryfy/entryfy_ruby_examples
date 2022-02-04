FROM ruby:3.1.0

RUN mkdir /app

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

ENV BUNDLER_VERSION=2.1.4
RUN gem install bundler:2.1.4

RUN bundle install

COPY . /app