Rails.application.routes.draw do
  resources :blogs
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show, :update,:destroy]
  resources :sessions, only: [:new, :create, :destroy]
end
