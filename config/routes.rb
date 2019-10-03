Rails.application.routes.draw do
  resources :products, only: [:show, :index]
  mount Cartify::Engine, at: '/'
  devise_for :users
  
  root controller: :products, action: :index
end
