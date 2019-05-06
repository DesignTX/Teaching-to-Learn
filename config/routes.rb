# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  get '/sendemail/:id', to: 'posts#send_email', as: 'email'
  resources :posts
  resources :transactions
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
