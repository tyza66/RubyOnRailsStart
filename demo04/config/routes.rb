Rails.application.routes.draw do
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "welcome/say_hello" => "welcome#say"
  get "welcome/index" => "welcome#index"
  root :to => "welcome#index"
end
