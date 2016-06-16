Rails.application.routes.draw do

  root "games#index"
  resources :games, only:[:index]
  get '/games/results', to: 'games#results', as: "results"

  root 'users#show'

  resources :sessions, only: [:create]
  resources :users, except: [:patch, :put, :delete, :new]

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  get 'register' => 'users#new'
  post 'users' => 'users#create'

  resources :games





end
