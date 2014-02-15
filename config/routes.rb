TripsApi::Application.routes.draw do
  root to: 'status#index'
  resources :trips
  resources :categories
  # scope :api do
  #   scope :v1 do
  #     resources :trips
  #     resources :categories
  #   end
  # end
end
