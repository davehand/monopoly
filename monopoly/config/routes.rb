Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :games
      resources :board_spaces
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users

  resources :games

  root 'home#index'

end
