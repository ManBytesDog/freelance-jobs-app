Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

      resources :reviews
      resources :posters
      resources :jobs
      resources :freelancers
      resources :contracts
end
