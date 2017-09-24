Rails.application.routes.draw do
  get 'flats/create'

  get 'flats/destroy'

  get 'flats/edit'

  get 'flats/index'

  get 'flats/show'

  get 'flats/new'

  get 'flats/update'

  get 'users/create'

  get 'users/destroy'

  get 'users/edit'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/update'

  get 'reviews/create'

  get 'reviews/destroy'

  get 'reviews/edit'

  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/update'

  get 'bookings/create'

  get 'bookings/destroy'

  get 'bookings/edit'

  get 'bookings/index'

  get 'bookings/new'

  get 'bookings/update'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  devise_for :users,
     controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
