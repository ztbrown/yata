source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'
gem 'jquery-rails'
gem 'backbone-on-rails'
gem 'simple_form', '~> 2.0.0.rc'
gem 'rabl', '~> 0.5.5.h'
gem 'gon'
gem 'acts_as_list'

group :development do
end

group :test do
  gem 'capybara', "~> 1.1.1"
  gem 'database_cleaner'
  gem 'turn', :require => false
  gem 'selenium-webdriver' 
  gem 'cucumber-rails', "~> 1.0.2"
  gem "factory_girl_rails"
  gem "bourne"
  gem "database_cleaner"
  gem "nokogiri"
  gem "shoulda"
  gem "launchy"
  gem "guard-spork"
  gem "spork", "~> 0.9.0.rc"

end

group :development, :test do
  gem "rspec-rails", "~> 2.6.1"
  gem "ruby-debug19"
  gem 'sqlite3'
  gem 'jasmine', "= 1.1.0.rc4"
  gem 'jasminerice'
  gem 'cucumber-rails', "~> 1.0.2"

end

group :production do
  gem 'pg'
  gem 'thin'
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

# Pull in the personal Gemfile if it exists.
eval File.read(File.expand_path("Gemfile.personal")) if File.exists?(File.expand_path("Gemfile.personal"))
