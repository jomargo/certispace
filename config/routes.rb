Rails.application.routes.draw do
  resources :billing_cycles
  resources :billing_addresses
  resources :images
  resources :plans
  resources :base_templates
  resources :templates
  resources :certificates
  root to: 'visitors#index'
  devise_for :users
end
