HiddenGems::Application.routes.draw do
  get "users/index"
  resources :votes
  resources :videos
  devise_for :users
  resources :users
  root :to => 'visitors#index'

end  
