Rails.application.routes.draw do
  # is this needed?
  devise_for :users
  root to: 'organisations#new'
  resources :organisations, only: [:new, :create, :show]
end
