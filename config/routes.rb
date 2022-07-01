Rails.application.routes.draw do
  devise_for :users
  root to: "start_stops#index"
  resources :start_stops, only: [:index, :show]
  resources :start, only: [:new, :create]
  resources :stop, only: [:new, :create]
  
 
 



end
