Rails.application.routes.draw do
  devise_for :users
  root 'items#index'  
  get 'posts', to: 'posts#index'
  
end
