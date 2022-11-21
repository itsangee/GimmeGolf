Rails.application.routes.draw do
  devise_for :users
  root to: "courses#home"


  resources :courses, only: [:index, :show] do
    resources :bookings, only: [:index, :create, :new]

  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:show, :edit, :update, :destroy]

  resources :attendees, only: [:create]
  # Defines the root path route ("/")
  # root "articles#index"
end
