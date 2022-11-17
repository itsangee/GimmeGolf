Rails.application.routes.draw do
  devise_for :users
  root to: "index#home"

  resources :courses, only: %i[index show] do
    resources :bookings, only: %i[index create new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:show, :edit, :update, :delete]

  resources :attendees, only: [:create, :delete]
  # Defines the root path route ("/")
  # root "articles#index"
end
