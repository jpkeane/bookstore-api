Rails.application.routes.draw do
  namespace 'v1' do
    jsonapi_resources :authors
    jsonapi_resources :publishing_houses
  end
end
