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
      get '/login', to: 'sessions#new', as: 'login_page'
      post '/login', to: 'sessions#create'
end
