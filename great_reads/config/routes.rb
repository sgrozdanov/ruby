Rails.application.routes.draw do
  root 'books#index'

  resources :users, only: [:new, :create]
  resources :books

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
