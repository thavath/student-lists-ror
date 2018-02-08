Rails.application.routes.draw do
    
  resources :studentts
  devise_for :users
  get 'home/about'
  resources :pins
  resources :searches
  root to: 'home#index'
  
end