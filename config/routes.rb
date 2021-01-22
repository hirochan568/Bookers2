Rails.application.routes.draw do
devise_for :users
resources :users,only:[:show,:edit,:update]
root 'homes#top'
resources :books, only: [:create, :index, :show, :destroy]
end