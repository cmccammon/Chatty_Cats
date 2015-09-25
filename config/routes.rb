Rails.application.routes.draw do
  resources :rooms
  resources :users
  resources :chats
  root 'rooms#index'
  match '*not_found_route', to: 'application#not_found', via: [:get, :post, :put, :delete]
end
