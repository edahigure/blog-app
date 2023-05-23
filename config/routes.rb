Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #get "users/:user_id/post", to: "posts#index", as: "user_posts"
  #get "users/:user_id/post/:id", to: "posts#show", as: "user_post"
  #get "users", to: "users#index"
  #get "users/:id", to: "users#show", as: "user"
  
  resources :users  , only: [:show, :index] do
    resources :posts  , only: [:show, :index]
  end

  # Defines the root path route ("/")
  root "users#index"
  
end
