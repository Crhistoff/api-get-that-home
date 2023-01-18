Rails.application.routes.draw do
  resources :photos
  resources :property_users
  resources :properties
  resources :users
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  post "/signup", to: "users#create"


end
