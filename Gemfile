source :rubygems

gem 'rails'
gem "ember-rails"
gem 'jquery-rails'
gem 'slim-rails'

gem 'json'
gem 'cancan'
gem 'strong_parameters'
gem 'kaminari'
gem 'kaminari-bootstrap'
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
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'rb-fsevent', require: false
  gem 'sqlite3'
end

group :development, :test do
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'headless'
  gem 'poltergeist'
  gem 'rspec-rails'
  gem 'vcr'
  gem 'jasmine'
  gem 'simplecov', require: false
end

group :production do
  gem 'pg'
end

# Gems used for interfacing with the backend music services
group :services do
  # Spotify
  gem 'hallon'
  gem 'hallon-openal'

  # MPD 
  gem 'librmpd'

  # Soundcloud
  gem 'soundcloud'
end
