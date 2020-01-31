Rails.application.routes.draw do
  namespace :api do
    get "/actors_url/:id" => "actors#show" 
    get "/actors_url" => "actors#index" 
    post "/actors_url" => "actorss#create"
    patch "/actors_url/:id" => "actors#update"
    delete "actors_url/:id" => "actors#destroy"

    get "/movies_url/:id" => "movies#show" 
    get "/movies_url" => "movies#index" 
    get "/movies_url/:id" => "actors#segment"  
    get "/movies_url/:id" => "actors#query" 
    post "/movies_url" => "movies#create"
    patch "/movies_url/:id" => "movies#update"
    delete "movies_url/:id" => "movies#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
