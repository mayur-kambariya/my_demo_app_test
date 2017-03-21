Rails.application.routes.draw do
  get 'admins/index'

  get 'admins/new'

  get 'admins/show'

  get 'admins/edit'

  devise_for :admins
  root 'admins#index'


  resources :bookings
  resources :cleaners

  post 'customers/logout' => 'customers#logout',as: :logout_customer

  resources :customers


end
