Rails.application.routes.draw do
  resources :sessions, only: [:create]
  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  resources :games


end
