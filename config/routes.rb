Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :chat_rooms, only: [:new, :create, :show, :index]
  mount ActionCable.server => '/cable'
  # post '/chat_rooms/:id' => 'messages#create', as: :create_message
  # root 'chat_rooms#index'
  root to: 'home#index'
end
