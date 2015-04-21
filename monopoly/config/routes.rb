Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :games do
        member do
          get 'roll_dice'
          get 'respond_to_property_purchase'
        end
      end
      resources :board_spaces
      resources :players do 
        member do
          get 'pay_out_of_jail'
        end
      end
      resources :users
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users

  resources :games

  root 'home#index'

end
