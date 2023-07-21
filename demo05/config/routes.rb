Rails.application.routes.draw do
  resources :people #像这样定义的就相当于将controller中定义的那些全弄进路由
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "welcome/say_hello" => "welcome#say"
  get "welcome/index" => "welcome#index"
  root :to => "welcome#index"
end
