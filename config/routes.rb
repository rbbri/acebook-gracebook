# frozen_string_literal: true

Rails.application.routes.draw do
  get 'albums/index'
  get 'albums/show'
  get 'albums/new'
  get 'albums/create'
  get 'albums/edit'
  get 'albums/update'
  get 'albums/destroy'
    root 'users#new'
    get 'sessions/new'
    get  '/signup',  to: 'users#new'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :users
    resources :posts do
      resources :comments
    end
    get '/:id', to: 'users#show'
    post '/:id', to: 'posts#create'
end
