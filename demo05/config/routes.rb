Rails.application.routes.draw do
  resources :people #像这样定义的就相当于将controller中定义的那些全弄进路由
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "welcome/say_hello" => "welcome#say"
  get "welcome/index" => "welcome#index"
  root :to => "welcome#index"
  match ':controller(/:action(/:id(.:format)))', :via => :all  #这里定义了外卡路由，可以将我们的两层的和带参数的请求映射到请求地址上
end
