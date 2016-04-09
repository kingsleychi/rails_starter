Rails.application.routes.draw do
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  
  devise_prefix = "account"
  devise_for :users, path: devise_prefix, controllers: {
  	registrations: 'users/registrations', sessions: 'users/sessions',
    passwords: 'users/passwords', confirmations: 'users/confirmations', unlocks: 'users/unlocks'
  }
  	
  #resources :users
end
