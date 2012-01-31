source 'https://rubygems.org'

gem 'rails'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-github'
gem 'jquery-rails'
gem 'rails-backbone'

group :development do
  gem 'rspec-rails', '2.6.1'
  gem 'sqlite3'
end

group :test do
  gem 'rspec-rails', '2.6.1'
  gem 'webrat', '0.7.1'	
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

eval File.read(File.expand_path("Gemfile.personal")) if File.exists?(File.expand_path("Gemfile.personal"))


