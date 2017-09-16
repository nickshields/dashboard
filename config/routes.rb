Rails.application.routes.draw do
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'device/list'
  #root 'home#show'

   get 'home/show'
   get 'device/new'
   post 'device/create'
   patch 'device/update'
   get 'device/list'
   get 'device/show'
   get 'device/edit'
   get 'device/delete'
   get 'device/update'
   get 'device/show_subjects'
   get 'device/refresh'
   post 'device/sends'
   post 'device/volume_up'
   post 'device/volume_down'
   # This route sends requests to our naked url to the *cool* action in the *gif* controller.
     root to: 'home#show'

  # I've created a gif controller so I have a page I can secure later.
  # This is optional (as is the root to: above).

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'users#login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'






end
