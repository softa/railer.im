Railerim::Application.routes.draw do
  resources :teams, :only => [:show]
  resources :users, :only => [:show, :create, :update]
  resources :rubygems, :only => [:index, :show]
  resources :gems, :controller => :rubygems, :as => :rubygems
  match 'search' => 'home#search', :as => :search
  resource :user_sessions, :only => [:create, :destroy]
  #TODO remover isso depois?
  match 'home/email' => 'home#email'
  match 'home/live' => 'home#live'
  root :to => "home#index"
  get ':id' => 'users#show', :as => :profile  
end