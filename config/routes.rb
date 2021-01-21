Rails.application.routes.draw do
root 'post_images#index'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy]
end