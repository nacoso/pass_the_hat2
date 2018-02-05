Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'home#index'
  get '/login' => 'sessions#new'
  get '/login_new_user' => 'sessions#create'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: "logout"
  resources :donations
  resources :user_charities
  resources :charities
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
