Rails.application.routes.draw do

  root "headers#index"
  get '/games/results', to: 'games#results', as: "results"


  resources :sessions, only: [:create]
  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'




end
