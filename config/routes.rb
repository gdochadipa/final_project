Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"

 

  resources :dispositons
  resources :outmails
  resources :dispocodes
  resources :users
  resources :inmails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
