Rails.application.routes.draw do

  #check Jame's video for documentation about roots
  #root or landing page
  root 'destinations#index'

  #destinations
  get 'destinations' => 'destinations#index'
  get 'destinations/new' => 'destinations#index'
  post 'destinations/create' => 'destinations#create'
  post 'destinations/update' => 'destinations#update'
  patch 'destinations/delete' => 'destinations#delete'
  get 'destinations/confirmation' => 'destinations#confirmation'

  get 'users/login' => 'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout'=> 'sessions#logout'

  #registration
  #http verb = 'resource/route' => mapped to controller method
  get 'users/register' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'


end
