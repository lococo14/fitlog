Rails.application.routes.draw do
  devise_for :users
  root 'logs#index'

  resources  :logs do
  end    
end