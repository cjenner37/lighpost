Rails.application.routes.draw do
  
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
  }
  
  resources :comments, only: [:create] do
    resources :comments, only: [:create]
  end
  resources :exercises
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :subscriptions
  resources :workouts

  get 'home/index'
  get 'users/index'
  resources :users, only: [:show]

  post 'workouts/generate'
  post 'exercises/add_image'

	root to: "home#index"
  
end
