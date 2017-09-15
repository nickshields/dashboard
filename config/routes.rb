Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'device/list'
  root 'home#show'

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
end
