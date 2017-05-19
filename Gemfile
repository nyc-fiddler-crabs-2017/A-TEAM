source 'https://rubygems.org'

# PostgreSQL driver
gem 'pg'
gem 'bcrypt'

# Sinatra driver
gem 'sinatra', '~> 1.0'
gem 'sinatra-contrib'

# Use Thin for our web server
gem 'thin', :git => 'https://github.com/macournoyer/thin'

gem 'activesupport', '~> 4.2.2'
gem 'activerecord', '~> 4.2.2'

gem 'rake'

gem 'shotgun'
gem 'pry'
gem 'pry-byebug'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec'
  gem 'capybara'
end

group :test, :development do
  gem 'factory_girl'
  gem 'faker'
end
