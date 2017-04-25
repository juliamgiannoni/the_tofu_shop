Rails.application.routes.draw do

  root 'products#index'

  resources :customers, only: [:new, :create]
  resources :carts, only: [:index]
  resources :products, only: [:index, :show]
  resources :categories, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/register', to: 'customers#new'

end
