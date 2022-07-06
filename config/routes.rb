Rails.application.routes.draw do
  get 'book_comments/create'
  get 'book_comments/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "home/about"=>"homes#about"
  root :to =>"homes#top"
  devise_for :users
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resource :favorites, only: [:create, :destroy]
  resources :users, only: [:index,:show,:edit,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
