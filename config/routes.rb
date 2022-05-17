Rails.application.routes.draw do
  get 'users/edit'
  get 'users/update'
  get 'users/show'
  get 'users/destroy'
  get 'shortys/index'
  get 'shortys/new'
  get 'shortys/create'
  get 'shortys/edit'
  get 'shortys/update'
  get 'shortys/destroy'
  get 'bookings/update'
  get 'bookings/create'
  get 'bookings/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
