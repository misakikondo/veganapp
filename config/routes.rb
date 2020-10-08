Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  get "recipes/search"
  resources :recipes do
    resources :comments, only: :create
  end
end
