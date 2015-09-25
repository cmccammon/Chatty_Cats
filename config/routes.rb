Rails.application.routes.draw do
  resources :rooms
  resources :users
  resources :chats
  root 'rooms#index'
end
