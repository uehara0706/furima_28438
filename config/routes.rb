Rails.application.routes.draw do
  root "items#index"
  devise_for :users
  resources :items, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :purchases, only:[:index, :create]
  end
end