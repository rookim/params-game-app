Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/name" => "my_params#message"

  get "/guess_the_number" => "my_params#guess_num"

  get "/sum/:number_one/:number_two" => "my_params#return_sum"

  get "/guessing_game/:number" => "my_params#guess_number"
end
