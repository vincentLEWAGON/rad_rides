Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  root 'pages#home'
  resources :vehicles do
    resources :bookings, only: [:new, :create]
  end
  get 'dashboard/my-bookings', to: 'dashboards#my_bookings'
  get 'dashboard/my-demands', to: 'dashboards#my_demands'
  get 'dashboard/', to: 'dashboards#index'
  post 'dashboard/my-demands/:id/accept', to: 'dashboards#accept'
  post 'dashboard/my-demands/:id/decline', to: 'dashboards#decline'
  resources :bookings, only: [:destroy] do
    resources :reviews
  end
end
