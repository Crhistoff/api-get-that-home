Rails.application.routes.draw do
  resources :photos
  resources :property_users
  resources :properties
  resources :users
  get "/articles", to: "articles#index"

end
