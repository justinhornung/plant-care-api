Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/plants" => "plants#index"
  post "/plants" => "plants#create"
  get "/plants/:id" => "plants#show"

  get "/schedules" => "schedules#index"
  post "/schedules" => "schedules#create"
  get "/schedules/:id" => "schedules#show"
end
