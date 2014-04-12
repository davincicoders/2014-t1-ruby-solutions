App::Application.routes.draw do
  get  "/"                => "main#form",       as: "form"
  post "/upload"          => "main#upload",     as: "upload"
  get  "/images/:id.:ext" => "main#image_data", as: "image_data"
end
