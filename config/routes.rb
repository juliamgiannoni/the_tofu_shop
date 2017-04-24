Rails.application.routes.draw do

  resources :customers, only: [:new, :create]
  resources :carts, only: [:index]
  resources :products
  resources :categories

end
