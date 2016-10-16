Rails.application.routes.draw do
  get 'home/index'

  namespace :admin do
    resources :articles, only: [:index, :new, :edit, :create, :update]
  end

  root to: 'home#index'
end
