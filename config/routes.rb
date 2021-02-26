Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  root 'logs#index'
  resources  :logs do
    resources :comments, only: [:create]
  end 
  resources :users, only: :show 
  resources :comments, only: [:destroy]
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
