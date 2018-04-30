Rails.application.routes.draw do
  root :to => 'products#index'

  devise_for :users

  resources :products

  resources :order_items do
    resources :orders
  end

  resources :order_items do
    resources :products
  end

  resource :cart, only: [:show]

end
