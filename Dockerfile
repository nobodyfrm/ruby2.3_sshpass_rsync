FROM ruby:2.3

RUN apt-get update && apt-get install -y  sshpass rsync

RUN source "https://rubygems.org" \
gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i \
gem "middleman", "~> 4.1.6" \
gem "therubyracer" \
group :unix do \
    gem "rb-inotify" \
end \
gem 'uglifier' \
gem 'middleman-minify-html' \
gem 'middleman-livereload' \
gem 'listen' \
gem 'middleman-search' \
