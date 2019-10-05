Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  resources :products, only: [:show, :index]
  devise_for :users
  root controller: :products, action: :index
end
