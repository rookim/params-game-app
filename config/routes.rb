Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/name" => "my_params#message"

  get "/guess_the_number" => "my_params#guess_num"
end
