Rails.application.routes.draw do
  root 'sessions#homepage', as: 'homepage'
  resources :bookings
  resources :guests 
  resources :boards
  resources :comments


  resources :guests, only: [:show, :index] do
    resources :rooms
    resources :hauntings
  end

  resources :rooms
  resources :hauntings

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
