Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:edit, :destroy] 
  root controller: :products, action: :index
end
