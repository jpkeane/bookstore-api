source 'https://rubygems.org'

gem 'rails', '4.2.5'

gem 'pg', '~> 0.15'

gem 'bcrypt', '~> 3.1.7'

gem 'jsonapi-resources'
gem 'apitome'

gem 'rack-cors'

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec_api_documentation'
  gem 'rubocop'
end

group :test do
  gem 'shoulda-matchers', '~> 3.0'
  gem 'coveralls', require: false
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end