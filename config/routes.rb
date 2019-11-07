# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'categories/show'
  # get 'products/index'
  # get 'products/show'
  root to: 'products#index'

  resources :products, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end
  resources :categories, only: [:show]
end
