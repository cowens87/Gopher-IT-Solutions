source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/\#{repo}.git" }

ruby '3.2.2'

gem "rails", "~> 8.0.2"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'launchy'
  gem 'orderly'
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop-rails'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'webmock'
  gem 'vcr'
end

group :development do
  gem "web-console"
end
