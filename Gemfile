source "https://rubygems.org"

gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i

gem "middleman", "~> 4.1.6"

#gem "therubyracer", :platform => :ruby
gem "therubyracer"

group :unix do
    gem "rb-inotify"
end

gem 'uglifier'
gem 'middleman-minify-html'
gem 'middleman-livereload'
gem 'listen'

# lunr site search - not yet published
gem 'middleman-search'

#asciidoc support for mm 4.x, not yet released
#gem 'middleman-asciidoc'
