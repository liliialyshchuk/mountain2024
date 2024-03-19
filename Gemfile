source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.3", ">= 7.1.3.2"

gem "sprockets-rails"

gem "pg"

gem "puma", ">= 5.0"

gem "importmap-rails"

gem "turbo-rails"

gem "stimulus-rails"

gem "jbuilder"

gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "bootsnap", require: false

# html
gem 'bootstrap'
gem 'jquery-rails'
gem "sassc-rails"
gem 'rails-i18n'

# auth
gem 'devise'
gem 'devise-i18n'
gem 'devise-bootstrap-views', '~> 1.0'

# features
gem 'image_processing'
gem 'aws-sdk-s3', require: false
gem 'cancancan'
gem 'activeadmin'

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :development, :test do
  gem "rspec-rails"
end

