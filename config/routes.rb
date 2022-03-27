Rails.application.routes.draw do
  get 'room/index'
  get 'posts/index'
  get 'users/index'
  get 'lesson/hello', to:'lesson#hello'
  get 'lesson/call', to:'lesson#call'
  post 'room/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
  resources :room
end
