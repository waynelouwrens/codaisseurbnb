Rails.application.routes.draw do
  resources :themes
  root to: 'pages#home'

  resources :rooms

  devise_for :users
end
