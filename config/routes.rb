Rails.application.routes.draw do
  root "site#index"

  match "/auth/:provider/callback", to: "sessions#create", via: [:get, :post]
  get "/login", to: "sessions#new", as: :login
  delete "/logout", to: "sessions#destroy", as: :logout

  get "user/:id/game", to: "site#game", as: :play_game

  post "/api", to: "site#save_game"

end
