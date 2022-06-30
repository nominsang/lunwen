Rails.application.routes.draw do
  namespace :admin do
    get 'home/index'
    root 'home#index'
  end
  devise_for :users
  get 'home/index'
  get 'home/about'
  resources :blogs
  root "home#index"
end
