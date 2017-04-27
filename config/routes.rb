Rails.application.routes.draw do

  root 'products#index'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/register', to: 'customers#new'
  get '/shoppingcart', to: 'carts#show'
  post '/add/:product_id', to: 'carts#add', as: 'add'
  delete '/purchase', to: 'carts#purchase', as: 'purchase'

  resources :sessions, only: [:new, :create, :destroy]
  resources :customers, only: [:new, :create]
  resources :carts, only: [:show]
  resources :products, only: [:index, :show]


end
