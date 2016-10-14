Rails.application.routes.draw do
  namespace :admin do
    resources :articles, only: [:new, :edit, :create, :update]
  end
end
