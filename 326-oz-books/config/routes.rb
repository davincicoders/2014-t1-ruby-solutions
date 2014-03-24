App::Application.routes.draw do
  get "/" => redirect("/books")

  get "/books" => "books#index"
  get "/books/:id" => "books#show"
end
