Rails.application.routes.draw do
  devise_for :users
  root to: "timecards#index"
  resources :users, only: [:edit, :update]
  resources :timecards, only: [:new]

  resources :starts,  only: [:new, :create]

  resources :stops, only: [:new, :cretae]


end
