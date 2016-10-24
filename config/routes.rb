Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :articles, only: [:show]

  namespace :admin do
    resources :articles, only: [:index, :new, :edit, :create, :update]
  end

  root to: 'home#index'
end
