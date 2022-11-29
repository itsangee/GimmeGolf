Rails.application.routes.draw do
  devise_for :users
  root to: "courses#home"

  get '/users/:id', to: 'users#dashboard', as: 'dashboard'

  resources :users, only: [:index, :show, :update, :edit] do

    member do
      post :follow
      post :unfollow
    end

    member do
      get :following, :followers
    end

  end

  resources :follows, only: [:create]

  resources :courses, only: [:index, :show] do
    resources :bookings, only: [:index, :create, :new]
    resources :reviews, only: [:new, :create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :attendees, only: [:create]
    resources :invitations, only: [:new, :create]
  end

  get "bookings/:id/invite_user", to: "invitations#invite_user", as: :invite_user

  # Defines the root path route ("/")
  # root "articles#index"
end
