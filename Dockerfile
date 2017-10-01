FROM ruby:2.3

RUN apt-get update && apt-get install -y  sshpass rsync

RUN echo "source 'https://rubygems.org' \n\
    gem install bundler --pre
    gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i \n\
    gem 'middleman', '~> 4.1.6' \n\
    gem 'therubyracer' \n\
     \n\
    group :unix do \n\
        gem 'rb-inotify' \n\
    end \n\
    \n\
    gem 'uglifier' \n\
    gem 'middleman-minify-html' \n\
    gem 'middleman-livereload' \n\
    gem 'listen' \n\
    gem 'middleman-search'" > Gemfile

RUN ls -la
RUN cat Gemfile
RUN bundle install
