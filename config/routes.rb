Rails.application.routes.draw do
  root to: 'trips#index'
  resources :trips
  resources :trips_without_goaltender
end
