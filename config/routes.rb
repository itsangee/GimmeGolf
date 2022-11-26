Rails.application.routes.draw do
  devise_for :users
  root to: "courses#home"

  get '/users/:id', to: 'users#dashboard', as: 'dashboard'
  # get '/patients/:id', to: 'patients#show'


  resources :users, only: [:index, :show] do
    member do
      post :follow
      post :unfollow
    end

    member do
      get :following, :followers
    end
  end

  resources :follows, only: [:create, ]

  resources :courses, only: [:index, :show] do
    resources :bookings, only: [:index, :create, :new]
    resources :reviews, only: [:create, :destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :attendees, only: [:create]
  end


  # Defines the root path route ("/")
  # root "articles#index"
end
