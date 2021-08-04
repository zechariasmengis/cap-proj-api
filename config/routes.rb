Rails.application.routes.draw do
  # resources :user_cards
  resources :rarities
  resources :cards
  resources :users, only: [:index, :create, :show]
  post '/login', to: 'users#login'
  get '/profile', to: 'users#profile'
  get 'user_cards', to: 'user_cards#index'
  delete 'user_cards/:id', to: 'user_cards#destroy'
  post 'user_cards', to: 'user_cards#open_pack'
end
