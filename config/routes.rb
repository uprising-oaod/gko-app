# frozen_string_literal: true

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'welcome/index', as: 'user_root'

  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'

  devise_for :users
  get 'welcome/index'
  get 'health/logs'
end
