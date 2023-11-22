Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  root 'vehicles#index'
  resources :vehicles do
    resources :bookings, only: [:new, :create]
  end
  get 'dashboard/my-bookings', to: 'dashboards#my_bookings'
  get 'dashboard/my-vehicles', to: 'dashboards#my_vehicles'
  get 'dashboard/my-reviews', to: 'dashboards#my_reviews'
  get 'dashboard/', to: 'dashboards#index'
  post 'dashboard/my-demands/:id/accept', to: 'dashboards#accept'
  post 'dashboard/my-demands/:id/decline', to: 'dashboards#decline'
  resources :bookings, only: [:destroy] do
    resources :reviews
  end
end
