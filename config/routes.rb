Railerim::Application.routes.draw do
  resources :users
  resources :rubygems, :only => [:index,:show]
  resources :gems, :controller => :rubygems, :as => :rubygems
  root :to => "home#index"
  get ':id' => 'users#show'
end