Rails.application.routes.draw do
  devise_for :users
  root to: "index#home"

  resources :courses, [:index, :show] do
    resources :bookings, [:index, :create, :new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, [:show, :edit, :update, :delete]

  resources :attendees, [:create, :delete]
  # Defines the root path route ("/")
  # root "articles#index"
end
