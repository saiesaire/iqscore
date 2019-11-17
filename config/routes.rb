Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  resources :tests, only: [:index, :create]
  resources :users, only: [:index, :create]

end
