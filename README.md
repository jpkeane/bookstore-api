## Bookstore API
[![Coverage Status](https://coveralls.io/repos/github/jpkeane/bookstore-api/badge.svg?branch=master)](https://coveralls.io/github/jpkeane/bookstore-api?branch=master)
[![Build Status](https://codeship.com/projects/6ef78d80-a132-0133-f6b0-22cba843574f/status?branch=master)](https://codeship.com/projects/128445)

API written for EmberIgniter bookstore Ember client.

### Deployment pipeline

* Push to GitHub
* Codeship CI at https://codeship.com/projects/128445/
* Deploy to http://cel-tut-bookstore-api.herokuapp.com
* API Docs at http://cel-tut-bookstore-api.herokuapp.com/docs/v1

### Gem stack

#### All envronments:

* jsonapi-resources
* apitome
* rack-cors

#### Dev and Test:
* rspec-rails
* factory_girl_rails
* faker
* rspec_api_documentation
* rubocop

#### Test:
* shoulda-matchers
* coveralls

#### Production:
* rails_12factor
* puma
