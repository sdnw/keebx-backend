Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  resources :items, only: [:index, :create, :update, :destroy, :show]
  resources :carts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/my_items", to: "items#my_items"
  # Defines the root path route ("/")
  # root "articles#index"
  get "welcome/index"

  # route where you will send an email
  post "welcome/please_send_email"

  # where visitor are redirected once email has been sent
  get "welcome/email_sent"

  root to: "welcome#index"
end
