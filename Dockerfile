FROM ruby:2.3

RUN apt-get update && apt-get install -y  sshpass rsync
RUN bundle install
