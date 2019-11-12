# frozen_string_literal: true

Rails.application.routes.draw do

  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'

  resources :products, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end
  resources :users
  resources :sessions, onlt: [:new, :create, :destroy]
  resources :pages, only: [:show]
  resources :categories, only: [:show]
  resources :about, only: [:index]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
