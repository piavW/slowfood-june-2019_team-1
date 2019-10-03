Rails.application.routes.draw do
  devise_for :users

  
  resources :products, except: [:show]

  root controller: :products, action: :index
end
