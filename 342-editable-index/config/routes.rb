App::Application.routes.draw do

  get "/" => redirect("/customers")

  resources :customers
  post "/customers_post" => "customers#customers_post",
    as: "customers_post"

end
