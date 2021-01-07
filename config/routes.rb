Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

      resources :reviews
      resources :posters
      resources :jobs
      resources :freelancers
      resources :contracts

      get '/home', to: 'application#home', as: 'home_page'
      get '/about', to: 'application#about', as: 'about_page'
      get '/welcome', to: 'application#welcome', as: 'welcome_page'
      
      get '/loginf', to: 'sessions#new_freelancer', as: 'login_freelancer'
      post '/loginf', to: 'sessions#create_freelancer'
      
      get '/loginp', to: 'sessions#new_poster', as: 'login_poster'
      post '/loginp', to: 'sessions#create_poster'
      
      get '/signin', to: 'application#sign_in', as: 'sign_in_page'
      delete '/logout', to: 'sessions#destroy', as: 'logout'

    end
