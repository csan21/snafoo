Rails.application.routes.draw do

  resources :suggestions, only: [:index, :create, :update]
  resources :votes, only: [:index]

  root to: 'suggestions#index'

end
