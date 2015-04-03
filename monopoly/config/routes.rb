Rails.application.routes.draw do

  resources :users

  resources :games
  
  root 'home#index'

end
