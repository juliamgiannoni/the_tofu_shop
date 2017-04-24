Rails.application.routes.draw do

  resources :customers, only: [:new, :create]

end
