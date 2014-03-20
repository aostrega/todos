source 'https://rubygems.org'

gem 'volt', github: 'voltrb/volt'


# The following gems are optional for themeing

# Twitter bootstrap
gem 'volt-bootstrap'

# Simple theme for bootstrap, remove to theme yourself.
gem 'volt-bootstrap-jumbotron-theme'

gem 'volt-editable-text'


# Server for MRI
platform :mri do
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end

# Server for jruby
platform :jruby do
  gem 'jubilee'
end


#---------------------
# Needed at the moment
gem 'opal', git: 'https://github.com/opal/opal.git'
gem 'opal-jquery', :git => 'https://github.com/opal/opal-jquery.git'
gem 'sockjs', git: 'https://github.com/kacperk/sockjs-ruby.git', require: false, platforms: :mri
