Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  resource :session, only: [:new, :create, :destroy]

  resources :bands
  resources :albums, except: :index
  resources :tracks, except: :index

  resources :notes, only: [:create]

  root to: redirect("/users")
end
