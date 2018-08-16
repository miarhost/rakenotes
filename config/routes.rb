Rails.application.routes.draw do

  resources :admins
  
  resources :users

	root 'static_pages#home'

  get '/home', to: 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/contacts', to: 'static_pages#contacts'

  get '/literature', to: 'static_pages#literature'

  get '/explanations', to: 'static_pages#explanations'

  get '/deploy', to: 'static_pages#deploy'

  get '/heroku', to: 'static_pages#heroku'

  get '/suse', to: 'static_pages#suse'

  get 'home(/:deploy)', to: 'static_pages#home'
  
  get 'home(/:heroku)', to: 'static_pages#home'

  get 'home(/:suse)', to: 'static_pages#home'

  get '/login', to: 'sessions#new'

 post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
 
end

