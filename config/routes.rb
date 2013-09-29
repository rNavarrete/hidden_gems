HiddenGems::Application.routes.draw do
  get "search/index"
  get "users/index"
  resources :votes
  resources :videos
  devise_for :users
  resources :users
  root :to => 'visitors#index'
  resources :users
  resources :comments
end  
