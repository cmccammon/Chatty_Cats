Rails.application.routes.draw do
  resources :rooms
  resources :users
  resources :chats

  get '/rooms/:id/chats', to: 'rooms#chats'
  get '/rooms/:id/users', to: 'rooms#users'
  get '/users/:id/profile', to: 'users#profile'
  root 'rooms#index'
  match '*not_found_route', to: 'application#not_found', via: [:get, :post, :put, :delete]
end
