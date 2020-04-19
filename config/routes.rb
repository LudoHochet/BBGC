Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/club', to: 'pages#club'
  get '/contact', to: 'pages#contact'
  get '/joueurs', to: 'pages#joueurs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
  resources :contacts, only: :create
end
