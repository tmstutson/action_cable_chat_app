Rails.application.routes.draw do
  root 'expenses#index'

  resources :users
  resources :messages
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  mount ActionCable.server, at: '/cable'
end
