Rails.application.routes.draw do

  resources :suggestions, only: [:index, :create]
  resources :votes, only: [:index]

  root to: 'votes#index'

end
