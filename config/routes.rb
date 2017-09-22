Rails.application.routes.draw do
   get 'users/new'
   post 'device/refresh'
   get 'device/home'

   get 'home/index'
   post 'home/command'
   post 'home/light'

   #We need to redirect the post request for the lights for them to work on the homepage.
   post '/light' => 'home#light'
   post '/command' => 'home#command'

   # the root route allows us to define our homepage.
   root to: 'home#index'

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
