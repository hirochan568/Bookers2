Rails.application.routes.draw do
devise_for :users
resources :users,only:[:show,:edit,:update, :index]
root 'homes#top'
resources :books, only: [:create, :index, :show, :destroy]
get "homes/about" => "homes#about"
end