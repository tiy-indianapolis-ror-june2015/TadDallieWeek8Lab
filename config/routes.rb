Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Payola::Engine => '/payola', as: :payola
  devise_for :users
  resources :products

  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clearcart'
  get '/cart/:id', to: 'cart#add', as: :addcart

  root 'products#index'

end
