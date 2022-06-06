Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do

    #User routes
    get '/users', to: 'users#index'
    get '/users/:id', to: 'users#show'

    post '/users', to: 'users#create'

    put '/users/:id', to: 'users#update'

    delete '/users/:id', to: 'users#destroy'

    #Song routes
    get '/songs', to: 'songs#index'
    get '/songs/:id', to: 'songs#show'
    
    post '/songs', to: 'songs#create'

    put '/songs/:id', to: 'songs#update'
    
    delete '/songs/:id', to: 'songs#destroy'
  end
end
