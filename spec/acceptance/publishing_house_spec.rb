require 'rspec_api_documentation_helper'

RSpec.resource 'Publishing House' do
  header 'Content-Type', 'application/vnd.api+json'

  shared_context 'publishing-houses parameters' do
    parameter 'type', <<-DESC, required: true
      The type of the resource. Must be authors.
    DESC
    let 'type' do
      'publishing-houses'
    end
    parameter 'name', <<-DESC, scope: :attributes, required: true
      The name of the Publishing House.
    DESC
    parameter 'discount', <<-DESC, scope: :attributes, required: true
      The discount allowed by the Publishing House.
    DESC
  end

  get '/v1/publishing-houses' do
    include_context 'publishing-houses parameters'

    before do
      3.times do
        FactoryGirl.create(:publishing_house)
      end
    end
    example_request 'GET /v1/publishing-houses' do
      expect(status).to eq 200
      authors = JSON.parse(response_body)
      expect(authors['data'].size).to eq 3
    end
  end

  get '/v1/publishing-houses/:id' do
    include_context 'publishing-houses parameters'

    let! :persisted_publishing_house do
      FactoryGirl.create(:publishing_house)
    end

    let :id do
      persisted_publishing_house.id.to_s
    end

    example_request 'GET /v1/publishing-houses/:id' do
      expect(status).to eq 200
      publishing_house = JSON.parse(response_body)
      expect(publishing_house['data']['id']).to eq send(:id)
    end
  end
end