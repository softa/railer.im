Railerim::Application.routes.draw do
  resources :users
  resources :rubygems, :only => [:index,:show]
  resources :gems, :controller => :rubygems, :as => :rubygems
  resource :user_sessions, :controller => 'user_sessions'  
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  root :to => "home#index"
  get ':id' => 'users#show', :as => :profile
end