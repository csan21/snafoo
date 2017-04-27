Rails.application.routes.draw do

  resources :suggestions, only: [:index]

  root to: 'suggestions#index'

end
