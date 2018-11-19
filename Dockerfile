FROM ruby:2.3 AS build
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
COPY . ./
RUN bundle install
CMD ["rails", "s", "-e", "production"]
