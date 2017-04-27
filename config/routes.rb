Rails.application.routes.draw do

  root 'products#index'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/register', to: 'customers#new'
  get '/shoppingcart', to: 'carts#show'
  post '/update/:product_id', to: 'carts#update', as: 'update'
  delete '/destroy/:product_id', to: 'carts#destroy', as: 'destroy'

  resources :sessions, only: [:new, :create, :destroy]
  resources :customers, only: [:new, :create]
  resources :carts, only: [:show]
  resources :products, only: [:index, :show]


end
