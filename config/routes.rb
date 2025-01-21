Rails.application.routes.draw do


  root "movies#index"
  get "/",  controller: "movies", action: "index" 

  get "/" => "movies#index"

  # Routes for the Movie resource:

  # CREATE
  post"/movies",  controller: "movies", action: "create" , as: :movies
  get"/movies/new",  controller: "movies", action: "new" , as: :new_movie

  post "/movies" => "movies#create"
  get "/movies/new" => "movies#new"
  

          
  # READ

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show", as: :movie


  get"/movies", controller: "movies", action: "index" 
  get "/movies/:id", controller: "movies", action: "show"
  
  # UPDATE

  patch "/movies/:id" => "movies#update"
  get "/movies/:id/edit" => "movies#edit", as: :edit_movie

  patch"/movies/:id", controller: "movies", action: "update" 
  get"/movies/:id/edit", controller: "movies", action: "edit" 
  
  # DELETE

  delete "/movies/:id" => "movies#destroy"

  delete "/movies/:id", controller: "movies", action: "destroy"

end
