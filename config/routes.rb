Rails.application.routes.draw do
  resources :comments
  resources :upvotes
  resources :solutions
  resources :bugs
  
  devise_for :users
  get 'home/index'
  root to: 'home#index'
end
