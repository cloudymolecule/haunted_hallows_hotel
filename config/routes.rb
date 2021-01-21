Rails.application.routes.draw do
  root 'static#homepage'
  resources :bookings
  resources :guests 
  resources :hauntings 
  resources :rooms 
  resources :visitor_logs
end
