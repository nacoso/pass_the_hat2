Rails.application.routes.draw do
  root 'home#index'

  resources :donations
  resources :user_charities
  resources :charities
  resources :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
