source 'https://rubygems.org'

# Ruby/Rails
ruby '2.2.3'
gem 'rails', '4.2.5'

# Datastore Gems
gem 'pg', '~> 0.15'

# Encryption and Hashing Gems
gem 'bcrypt', '~> 3.1.7'

# API Gems
gem 'jsonapi-resources'
gem 'apitome'
gem 'rack-cors'

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug'

  # TDD Gems
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'faker'

  # API TDD Gems
  gem 'rspec_api_documentation'

  # Code style Gems
  gem 'rubocop'
end

group :test do
  # TDD Gems
  gem 'shoulda-matchers', '3.0.1'

  # Code coverage Gems
  gem 'coveralls', require: false
end

group :production do
  # Heroku Gems
  gem 'rails_12factor'

  # Production web server Gems
  gem 'puma'
end