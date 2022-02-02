# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'bootsnap', '>= 1.4.4', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'bootstrap', '~> 5.1'
gem 'devise'
gem 'hamlit'
# gem 'haml-rails' # Раскомментировать, для выполнения команды rails haml:erb2haml
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease
gem 'paper_trail'
gem 'pg', '~> 1.1' # Use postgresql as the database for Active Record
gem 'puma', '~> 5.0' # Use Puma as the app server
gem 'rails', '~> 6.1.4'
gem 'rails_admin'
gem 'rubocop'
gem 'rubocop-performance'
gem 'rubocop-rails'
gem 'rubocop-rspec'
gem 'russian'
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster
gem 'webpacker', '~> 5.0' # Transpile app-like JavaScript
gem 'yard'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw] # Call 'byebug' anywhere in the code
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0' # Display performance information
  gem 'spring' # Spring speeds up development by keeping your application running in the background
  gem 'web-console', '>= 4.1.0' # Access an interactive console on exception pages
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
