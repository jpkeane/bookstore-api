require 'rspec_api_documentation_helper'

RSpec.resource 'Authors' do
  header 'Content-Type', 'application/vnd.api+json'

  shared_context 'authors parameters' do
    parameter 'type', <<-DESC, required: true
      The type of the resource. Must be authors.
    DESC
    let 'type' do
      'authors'
    end
    parameter 'name', <<-DESC, scope: :attributes, required: true
      The name of the Author.
    DESC
  end

  get '/v1/authors' do
    include_context 'authors parameters'

    before do
      2.times do
        FactoryGirl.create(:author)
      end
    end
    example_request 'GET /v1/authors' do
      expect(status).to eq 200
      authors = JSON.parse(response_body)
      expect(authors['data'].size).to eq 2
    end
  end

  get '/v1/authors/:id' do
    include_context 'authors parameters'

    let! :persisted_author do
      FactoryGirl.create(:author)
    end

    let :id do
      persisted_author.id.to_s
    end

    example_request 'GET /v1/authors/:id' do
      expect(status).to eq 200
      author = JSON.parse(response_body)
      expect(author['data']['id']).to eq send(:id)
    end
  end
end