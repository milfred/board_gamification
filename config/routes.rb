Rails.application.routes.draw do
  root 'users#show'
  resources :sessions, only: [:create]
  resources :users, except: [:patch, :put, :delete, :new]

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  get 'register' => 'users#new'
  post 'users' => 'users#create'

  resources :games



end
