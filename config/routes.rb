Rails.application.routes.draw do
  devise_for :users
  root 'items#index'  
  get 'posts', to: 'posts#index'
  get 'items/new', to: 'items#new'
  post 'items/new', to: 'items#new'
  resources :items do
    resources :purchases, only:[:index, :create]
  end
  
end
