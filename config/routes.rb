Rails.application.routes.draw do
  get 'donations/new'
  get 'donations/create'
  resources :campaigns, only: [:index, :new, :create, :show]
  # resources :donations, only: [:new, :create]
  root controller: :campaigns, action: :index
end
