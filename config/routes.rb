Rails.application.routes.draw do
  root 'static#homepage'
  resources :bookings
  resources :guests 
  resources :hauntings 
  resources :visitor_logs


  resources :guests, only: [:show, :index] do
    resources :rooms
    resources :hauntings
  end

  resources :rooms
  resources :hauntings

  get '/login', to: 'sessions#new', as 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
