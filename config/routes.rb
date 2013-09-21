HiddenGems::Application.routes.draw do
  resources :votes
  resources :videos
  devise_for :users
  root :to => 'visitors#index'

end  
