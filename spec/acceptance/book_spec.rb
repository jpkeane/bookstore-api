require 'rspec_api_documentation_helper'

RSpec.resource 'Books' do
  header 'Content-Type', 'application/vnd.api+json'

  shared_context 'books parameters' do
    parameter 'type', <<-DESC, required: true
      The type of the resource. Must be books.
    DESC
    let 'type' do
      'books'
    end
    parameter 'title', <<-DESC, scope: :attributes, required: true
      The title of the book.
    DESC
    parameter 'price', <<-DESC, scope: :attributes, required: true
      The price of the book.
    DESC
  end

  get '/v1/books' do
    include_context 'books parameters'

    before do
      2.times do
        FactoryGirl.create(:book)
        FactoryGirl.create(:self_published_book)
      end
    end
    example_request 'GET /v1/books' do
      expect(status).to eq 200
      books = JSON.parse(response_body)
      expect(books['data'].size).to eq 4
    end
  end

  get '/v1/books/:id' do
    include_context 'books parameters'

    let! :persisted_book do
      FactoryGirl.create(:book)
    end

    let :id do
      persisted_book.id.to_s
    end

    example_request 'GET /v1/books/:id' do
      expect(status).to eq 200
      book = JSON.parse(response_body)
      expect(book['data']['id']).to eq send(:id)
    end
  end
end
