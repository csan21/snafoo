Rails.application.routes.draw do

  resources :suggestions, only: [:index, :new]
  resources :votes, only: [:index, :create]

  root to: 'votes#index'

end
