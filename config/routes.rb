Rails.application.routes.draw do
  resources :line_items
  resources :carts, only: [:show, :update]
  resources :products, only: [:index, :show]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Payola::Engine => '/payola', as: :payola
  devise_for :users

  root 'products#index'

end
