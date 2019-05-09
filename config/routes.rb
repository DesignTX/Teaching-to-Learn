# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  get '/home', to: 'posts#landingpage'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  get '/sendemail/:id', to: 'posts#send_email', as: 'email'
  resources :posts
  resources :transactions
  resources :comments
end
