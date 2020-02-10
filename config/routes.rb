Rails.application.routes.draw do

  resources :users
  resources :messages
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'home_page#index'
  
  resources :expenses
  resources :home_page 
  
  mount ActionCable.server, at: '/cable'
end
