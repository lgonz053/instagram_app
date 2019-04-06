Rails.application.routes.draw do
  devise_for :users
  get '/homes' => 'homes#index'

  resources :users, only: [:show]
  root to: 'homes#index'
end
