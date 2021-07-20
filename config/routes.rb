Rails.application.routes.draw do
  devise_for :users
  resources :clothing_uses
  resources :garments
  resources :garment_types
  resources :brands
  resources :broadcasts
  resources :hosts

  root 'broadcasts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
