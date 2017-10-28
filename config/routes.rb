Rails.application.routes.draw do
  root to: 'pages#home'

  resources :rooms

  devise_for :users
end
