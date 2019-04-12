Rails.application.routes.draw do
  devise_for :users
  get '/homes' => 'homes#index'

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create]
  root to: 'homes#index'
end