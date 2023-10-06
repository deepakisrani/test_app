FROM ruby:2.7.6

WORKDIR /usr/src/app

COPY . .
RUN bundle install

EXPOSE 3000