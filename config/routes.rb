Rails.application.routes.draw do
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }
  resources :comments
  resources :exercises
  resources :posts
  resources :subscriptions
  resources :workouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'

  get 'users/index'

  get 'users/show'

	root to: "home#index"

end
