Rails.application.routes.draw do
  resources :themes
  root to: 'pages#home'

  resources :rooms
  resources :profiles, only: [:new, :edit, :create, :update]

  devise_for :users
end
