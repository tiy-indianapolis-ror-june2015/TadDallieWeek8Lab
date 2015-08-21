Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Payola::Engine => '/payola', as: :payola
  devise_for :users
  resources :products

  root 'products#index'


end
