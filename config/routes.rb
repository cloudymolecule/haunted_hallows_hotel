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

end
