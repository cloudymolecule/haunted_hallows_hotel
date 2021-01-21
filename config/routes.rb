Rails.application.routes.draw do
  resources :bookins
  resources :guests 
  resources :hauntings 
  resources :rooms 
  resources :visitor_logs
end
