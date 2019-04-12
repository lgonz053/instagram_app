Rails.application.routes.draw do
  devise_for :users
  get '/homes' => 'homes#index'

  resources :users, only: [:show, :edit, :update]
  root to: 'homes#index'
end