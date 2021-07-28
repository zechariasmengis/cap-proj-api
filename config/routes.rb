Rails.application.routes.draw do
  resources :user_cards
  resources :rarities
  resources :cards
  resources :users, only: [:index, :create, :show]
  post '/login', to: 'users#login'
end
