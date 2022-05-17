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
  root to: 'shortys#index'

  # List of all shorties
  get 'index', to: 'shortys#index', as: 'shortys'


  # Page and action for creating new shorty listing
  get 'shorties/new', to: 'shortys#new', as: 'new_shortys'
  post 'shorties', to: 'shortys#create'

  # Show page for a specific shorty listing
  get 'shorties/:id', to: 'shortys#show', as: 'shorty'

  # Edit and update Shorty listing
  get 'shorties/:id/edit', to: 'shortys#edit', as: 'edit_shortys'
  patch 'shorties/:id', to: 'shortys#update'

  # Delete shorty
  delete 'shorties/:id', to: 'shortys#destroy'

  # Create new user
  get 'profile/new', to: 'users#new', as: 'new_user'
  post 'profile', to: 'users#create'

  # User profile page
  get 'profile/:id', to: 'users#show', as: 'user'

  # Edit user
  get 'profile/:id/edit', to: 'users#edit', as: 'edit_user'
  patch 'profile/:id', to: 'users#update'

  # Delete user
  delete 'profile/:id', to: 'users#destroy'

  # Create and update and delete booking
  post 'shortys/:id/bookings', to: 'bookings#create'
  patch 'bookings/:id', to: 'bookings#update'
  delete 'bookings/:id', to: 'bookings#destroy'


  # Started creating routes using resources, decided to use manual method for sake of clarity with prefixes
    #Leaving it here in case we change our minds

        # resources :users do
        #   resources :shortys, only: [:show, :edit, :destroy]
        #   resources :bookings, only: [:update]
        # end

        # resources :shortys

end
