Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/create'

  get 'comments/new'

  get 'comments/update'

  get 'comments/edit'

  get 'comments/show'

  get 'comments/destroy'

  get 'posts/index'

  get 'posts/create'

  get 'posts/new'

  get 'posts/update'

  get 'posts/edit'

  get 'posts/show'

  get 'posts/destroy'

  get 'workouts/index'

  get 'workouts/create'

  get 'workouts/new'

  get 'workouts/update'

  get 'workouts/edit'

  get 'workouts/show'

  get 'workouts/destroy'

  get 'exercises/index'

  get 'exercises/create'

  get 'exercises/new'

  get 'exercises/update'

  get 'exercises/edit'

  get 'exercises/show'

  get 'exercises/destroy'

  get 'subscriptions/index'

  get 'subscriptions/create'

  get 'subscriptions/new'

  get 'subscriptions/update'

  get 'subscriptions/show'

  get 'subscriptions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
