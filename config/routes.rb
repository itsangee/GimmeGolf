Rails.application.routes.draw do
  devise_for :users
  root to: "courses#home"

  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end

  resources :courses, only: [:index, :show] do
    resources :bookings, only: [:index, :create, :new]  
    resources :reviews, only: :create
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :attendees, only: [:create]
  end


  # Defines the root path route ("/")
  # root "articles#index"
end
