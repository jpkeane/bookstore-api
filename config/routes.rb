Rails.application.routes.draw do
  namespace 'v1' do
    jsonapi_resources :authors
  end
end
