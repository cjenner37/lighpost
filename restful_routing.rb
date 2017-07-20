                  Prefix Verb   URI Pattern                              Controller#Action
        new_user_session GET    /users/sign_in(.:format)                 users/sessions#new
            user_session POST   /users/sign_in(.:format)                 users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)                users/sessions#destroy
       new_user_password GET    /users/password/new(.:format)            devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)           devise/passwords#edit
           user_password PATCH  /users/password(.:format)                devise/passwords#update
                         PUT    /users/password(.:format)                devise/passwords#update
                         POST   /users/password(.:format)                devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)                  users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)                 users/registrations#new
  edit_user_registration GET    /users/edit(.:format)                    users/registrations#edit
       user_registration PATCH  /users(.:format)                         users/registrations#update
                         PUT    /users(.:format)                         users/registrations#update
                         DELETE /users(.:format)                         users/registrations#destroy
                         POST   /users(.:format)                         users/registrations#create
        comment_comments POST   /comments/:comment_id/comments(.:format) comments#create
                comments POST   /comments(.:format)                      comments#create
               exercises GET    /exercises(.:format)                     exercises#index
                         POST   /exercises(.:format)                     exercises#create
            new_exercise GET    /exercises/new(.:format)                 exercises#new
           edit_exercise GET    /exercises/:id/edit(.:format)            exercises#edit
                exercise GET    /exercises/:id(.:format)                 exercises#show
                         PATCH  /exercises/:id(.:format)                 exercises#update
                         PUT    /exercises/:id(.:format)                 exercises#update
                         DELETE /exercises/:id(.:format)                 exercises#destroy
           post_comments POST   /posts/:post_id/comments(.:format)       comments#create
                   posts GET    /posts(.:format)                         posts#index
                         POST   /posts(.:format)                         posts#create
                new_post GET    /posts/new(.:format)                     posts#new
               edit_post GET    /posts/:id/edit(.:format)                posts#edit
                    post GET    /posts/:id(.:format)                     posts#show
                         PATCH  /posts/:id(.:format)                     posts#update
                         PUT    /posts/:id(.:format)                     posts#update
                         DELETE /posts/:id(.:format)                     posts#destroy
           subscriptions GET    /subscriptions(.:format)                 subscriptions#index
                         POST   /subscriptions(.:format)                 subscriptions#create
        new_subscription GET    /subscriptions/new(.:format)             subscriptions#new
       edit_subscription GET    /subscriptions/:id/edit(.:format)        subscriptions#edit
            subscription GET    /subscriptions/:id(.:format)             subscriptions#show
                         PATCH  /subscriptions/:id(.:format)             subscriptions#update
                         PUT    /subscriptions/:id(.:format)             subscriptions#update
                         DELETE /subscriptions/:id(.:format)             subscriptions#destroy
                workouts GET    /workouts(.:format)                      workouts#index
                         POST   /workouts(.:format)                      workouts#create
             new_workout GET    /workouts/new(.:format)                  workouts#new
            edit_workout GET    /workouts/:id/edit(.:format)             workouts#edit
                 workout GET    /workouts/:id(.:format)                  workouts#show
                         PATCH  /workouts/:id(.:format)                  workouts#update
                         PUT    /workouts/:id(.:format)                  workouts#update
                         DELETE /workouts/:id(.:format)                  workouts#destroy
              home_index GET    /home/index(.:format)                    home#index
             users_index GET    /users/index(.:format)                   users#index
              users_show GET    /users/show(.:format)                    users#show
       workouts_generate POST   /workouts/generate(.:format)             workouts#generate
                    root GET    /                                        home#index
