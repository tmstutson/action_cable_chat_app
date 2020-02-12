Rails.application.routes.draw do

  resources :users
  resources :messages
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'home_page#index'
 	get 'itinerary', to: 'itinerary#index'
 	get  'expenses', to: 'new_expense#index'
 	get 'messages', to: 'messages#index'

  
  resources :expenses 
  resources :home_page 
  resources :itinerary
  
  mount ActionCable.server, at: '/cable'
end
