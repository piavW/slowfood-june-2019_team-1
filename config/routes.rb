Rails.application.routes.draw do
  devise_for :users

  resources :products

  root controller: :products, action: :index
end
