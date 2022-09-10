Rails.application.routes.draw do
  resources :users
  resources :items
  resources :carts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "welcome/index"

  # route where you will send an email
  post "welcome/please_send_email"

  # where visitor are redirected once email has been sent
  get "welcome/email_sent"

  root to: "welcome#index"
end
