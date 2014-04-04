App::Application.routes.draw do

  get "/" => redirect("/customers")

  resources :customers

end
