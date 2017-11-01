Rails.application.routes.draw do

  resources :flats, except: [:destroy] do
    resources :reviews, except: [:destroy, :edit]
    resources :bookings
  end

  resources :bookings

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  devise_for :users,
     controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
