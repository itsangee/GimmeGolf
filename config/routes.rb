Rails.application.routes.draw do
  devise_for :users
  root to: "courses#home"

  get '/dashboard', to: 'users#dashboard'

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
    member do
      post :accept
    end
    resources :invitations, only: [:new, :create] do
      #member do
       # get :invite_user
      #end
    end
  end

  resources :invitations, only: [:destroy]

  get "bookings/:id/invite_user", to: "invitations#invite_user", as: :invite_user

  # Defines the root path route ("/")
  # root "articles#index"
end
