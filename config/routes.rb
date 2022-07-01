Rails.application.routes.draw do
  resources :dissertations
  resources :abstracts
  resources :contributors
  resources :keywords
  resources :alternative_titles
  resources :creators
  resources :languages
  namespace :admin do
    get 'home/index'
    root 'home#index'
      resources :dissertations
      resources :abstracts
      resources :contributors
      resources :keywords
      resources :alternative_titles
      resources :creators
      resources :languages
  end
  devise_for :users
  get 'home/index'
  get 'home/about'
  resources :blogs
  root "home#index"
end
