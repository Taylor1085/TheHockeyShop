# frozen_string_literal: true

Rails.application.routes.draw do
  get 'categories/show'
  get 'products/index'
  get 'products/show'
  root to: 'products#index'

  resources :products, only: %i[index show]
  resources :categories, only: [:show]
end
