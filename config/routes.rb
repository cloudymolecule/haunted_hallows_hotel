Rails.application.routes.draw do
  root 'static#homepage'
  resources :bookings
  resources :guests 
  resources :hauntings 

  resources :visitor_logs


  resources :guests, only: [:show] do
    resources :rooms, only: [:show, :index]
  end

  resources :rooms

end
