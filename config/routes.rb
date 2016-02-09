Rails.application.routes.draw do
  root to: 'trips#index'
  namespace :basic_example do
    resources :trips
    resources :trips_no_goaltender
  end
  namespace :nested_example do
    resources :trips
    resources :trips_no_goaltender
  end
end
