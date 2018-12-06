Rails.application.routes.draw do
  resources :donations, only: [:new, :create]
  resources :campaigns, only: [:index, :new, :create, :show]
  # resources :donations, only: [:new, :create]
  root controller: :campaigns, action: :index
end
