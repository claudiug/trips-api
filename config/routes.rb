TripsApi::Application.routes.draw do
  root to: 'status#index'
  resources :trips
end
