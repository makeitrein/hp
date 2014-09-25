Rails.application.routes.draw do
  devise_for :users

  resources :reviews

  resources :fanfics

  resources :tags

  resources :users

  root to: 'home#index'


end
