source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'awesome_print', '~> 1.8'
gem 'draper', '~> 3.1'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'will_paginate', '~> 3.3'
gem 'bootstrap-will_paginate', '~> 1.0'

group :development, :test do
  gem 'byebug', '~> 11.0', '>= 11.0.1', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 5.1', '>= 5.1.1'
  gem 'faker', '~> 2.6'
  gem 'pry-byebug', '~> 3.7'
  gem 'pry-rails', '~> 0.3.9'
  # Allows you to wrap code in Pry::rescue{ } to open a pry session at any unhandled exceptions
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'pry-rescue', '~> 1.5'
  gem 'rspec-rails', '~> 3.9'
  gem 'rubocop', '~> 0.75.1'
  gem 'rubocop-rspec', '~> 1.36'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'better_errors', '~> 2.5', '>= 2.5.1'
  gem 'guard'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
  gem 'guard-rubocop', '~> 1.3'
  gem 'guard-zeus'
  gem 'listen', '~> 3.2'
  gem 'rack-livereload'
  gem 'rails_layout', '~> 1.0', '>= 1.0.42'
  gem 'spring', '~> 2.1'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'simplecov', '~> 0.16.1'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
