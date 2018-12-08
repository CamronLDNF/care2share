Rails.application.routes.draw do
  devise_for :users
  resources :campaigns, only: [:index, :new, :create, :show]
  root controller: :campaigns, action: :index
end
