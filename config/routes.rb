Rails.application.routes.draw do
  root 'users#show'
  resources :sessions, only: [:create]
  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  resources :users, except: [:patch, :put, :delete, :new]
  get 'register' => 'users#new'
  post 'users' => 'users#create'
end
