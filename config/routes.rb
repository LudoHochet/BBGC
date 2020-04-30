Rails.application.routes.draw do
  devise_for :users
  # routes for pages views
  root to: 'pages#home'
  get '/club', to: 'pages#club'
  get '/contact', to: 'pages#contact'
  get '/joueurs', to: 'pages#joueurs'
  resources :contacts, only: :create
  resources :players, only: [:new, :create]
  resources :articles do
    resources :reviews, only: [:create, :destroy]
    resources :paragraphs, only: [:create, :edit, :update, :destroy]
    resources :links, only: [:create, :edit, :update, :destroy]
  end
end
