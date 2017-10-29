Rails.application.routes.draw do
  resources :themes
  root to: 'pages#home'

  resources :rooms do
    resources :bookings, only: [:create]
  end
  
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos

  devise_for :users
end
