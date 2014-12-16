Sonara::Application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  resources :sessions, only: [:create, :destroy]

  root 'home#index'

  resources :words
  resources :comments, only: [:create, :destroy]

  get 'home/about'
  get 'home/authors'
  get 'home/gods'
end
