HiddenGems::Application.routes.draw do
  devise_for :users
  root :to => 'visitors#index'

  resources :videos do
    member do
      post :vote_for_video
      post :vote_against_video
    end
  end
end  
