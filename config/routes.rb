Railerim::Application.routes.draw do
  resources :users, :only => [:show,:create,:update]
  resources :rubygems, :only => [:index,:show]
  resources :gems, :controller => :rubygems, :as => :rubygems
  resource :user_sessions, :only => [:create,:destroy]
  #TODO remover isso depois?
  match 'home/email' => 'home#email'
  root :to => "home#index"
  get ':id' => 'users#show', :as => :profile  
end