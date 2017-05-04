Rails.application.routes.draw do

  resources :suggestions, only: [:new, :create]
  resources :votes, only: [:index, :create]

  root to: 'votes#index'

end
