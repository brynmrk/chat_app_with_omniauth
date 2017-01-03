Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :chat_rooms, only: [:new, :create, :show, :index]
  
  root to: 'home#index'
end
