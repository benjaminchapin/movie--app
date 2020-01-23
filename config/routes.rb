Rails.application.routes.draw do
  namespace :api do
    get "/actors_url/first" => "actors#actor_method"  
  
    get "/actors_url/:id" => "actors#show" 

    get "/actors_url" => "actors#index" 

    get "/actors_url/:id" => "actors#query_action"

    post "/actors_url" => "actorss#create"

    patch "/actors_url/:id" => "actors#update"

    delete "actors_url/:id" => "actors#destroy"

    get "/movies_url/:id" => "movies#show" 

    get "/movies_url" => "movies#index" 

    get "/movies_url/:id" => "actors#segment" 

    get "/movies_url/:id" => "actors#segment" 

    get "/movies_url/:id" => "actors#query" 

    post "/movies_url" => "movies#create"

    patch "/movies_url/:id" => "movies#update"

    delete "movies_url/:id" => "movies#destroy"
  end
end
