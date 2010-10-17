Railerim::Application.routes.draw do
  get "locations/index"
  get "locations/city"
  get "locations/country"
  get "users/resend_activation_email"
  post 'users/send_reset_email'
  post "users/recommend"
  post "users/unrecommend"
  resources :companies, :only => [:index,:show]
  resources :teams, :only => [:index, :show]
  match 'users/set_password' => 'users#set_password', :as => :set_password
  resources :users, :only => [:show, :edit, :create, :update]
  resources :rubygems, :only => [:index, :show]
  resources :gems, :controller => :rubygems, :as => :rubygems
  match 'search' => 'home#search', :as => :search
  resource :user_sessions, :only => [:create, :destroy]
  #TODO remover isso depois?
  match 'home/email' => 'home#email'
  match 'home/live' => 'home#live'
  match 'user_sessions/token_auth' => 'user_sessions#token_auth'
  root :to => "home#index"
  get ':id' => 'users#show', :as => :profile  
  get ':id/edit' => 'users#edit', :as => :edit_profile
end