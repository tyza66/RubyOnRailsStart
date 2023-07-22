Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'get1/action1' => 'get1#action1'
  match ':controller(/:action(/:id(.:format)))', :via => :all
end
