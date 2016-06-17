Rails.application.routes.draw do
  resources :reviews, except: [:index, :show]
  root "games#index"
  resources :games, only: [:index]
  get '/games/results', to: 'games#results', as: "results"

  resources :sessions, only: [:create]
  resources :users, except: [:patch, :put, :delete, :new]

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  get 'register' => 'users#new'
  post 'users' => 'users#create'

  resources :games

  resources :groups, only: [:new, :create, :show]

end
