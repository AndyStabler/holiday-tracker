Rails.application.routes.draw do
  resources :organisations, only: [:new, :create]
end
