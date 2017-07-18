Rails.application.routes.draw do
  get 'home/index'

  get 'users/index'

  get 'users/show'

  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }
	root to: "home#index"
end
