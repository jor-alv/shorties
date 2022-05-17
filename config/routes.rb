Rails.application.routes.draw do
  devise_for :users
  root to: 'shorties#index'

  # List of all shorties
  get 'index', to: 'shorties#index', as: 'shorties'

  # Page and action for creating new shorty listing
  get 'shorties/new', to: 'shorties#new', as: 'new_shorties'
  post 'shorties', to: 'shorties#create'

  # Show page for a specific shorty listing
  get 'shorties/:id', to: 'shorties#show', as: 'shorty'

  # Edit and update Shorty listing
  get 'shorties/:id/edit', to: 'shorties#edit', as: 'edit_shorties'
  patch 'shorties/:id', to: 'shorties#update'

  # Delete shorty
  delete 'shorties/:id', to: 'shorties#destroy'

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
  post 'shorties/:id/bookings', to: 'bookings#create'
  get 'bookings/:id', to: 'bookings#show', as: 'booking'
  patch 'bookings/:id', to: 'bookings#update'
  delete 'bookings/:id', to: 'bookings#destroy'


  # Started creating routes using resources, decided to use manual method for sake of clarity with prefixes
    #Leaving it here in case we change our minds

        # resources :users do
        #   resources :shorties, only: [:show, :edit, :destroy]
        #   resources :bookings, only: [:update]
        # end

        # resources :shorties

end
