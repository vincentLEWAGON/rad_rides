Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  root 'pages#home'
  post 'login', to: 'users#login'
  resources :vehicles
  get 'dashboard/my-bookings', to: 'dashboards#my_bookings'
  get 'dashboard/my-demands', to: 'dashboards#my_demands'
  post 'dashboard/my-demands/:id/accept', to: 'dashboards#accept'
  post 'dashboard/my-demands/:id/decline', to: 'dashboards#decline'
  resources :bookings, only: [:new, :create, :destroy] do
    resources :reviews
  end
end
