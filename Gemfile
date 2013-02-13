source :rubygems

gem 'rails'
gem 'jquery-rails'
gem 'json'
gem 'cancan'
gem 'slim-rails'
gem 'strong_parameters'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem "ember-rails"
gem 'puma'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '~> 2.2.2.0'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'annotate', ">=2.5.0"
  gem "better_errors"
  gem "binding_of_caller" # Optional, only for the advanced features
  gem 'guard-bundler'
  gem 'guard-puma'
  gem 'guard-cucumber'
  gem 'rb-fsevent', require: false
  gem 'sqlite3'
end

group :development, :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'cucumber'
  gem 'headless'
  gem 'poltergeist'
  gem 'rspec-rails'
  gem 'vcr'
  gem 'jasmine'
end

group :production do
  gem 'pg'
end

# Gems used for interfacing with the backend music services
group :services do
  gem 'hallon'
  gem 'librmpd'
end
