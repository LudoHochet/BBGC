Rails.application.routes.draw do
  devise_for :users
  # routes for pages views
  root to: 'pages#home'
  get '/club', to: 'pages#club'
  get '/contact', to: 'pages#contact'
  get '/joueurs', to: 'pages#joueurs'
  resources :contacts, only: :create
  resources :paragraphs, only: [:create, :update, :destroy]
  resources :articles do
    resources :reviews, only: [:create, :destroy]
  end
end
