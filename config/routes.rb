Rails.application.routes.draw do
  root "site#index"

  match "/auth/:provider/callback", to: "sessions#create", via: [:get, :post]
  get "/login", to: "sessions#new", as: :login
  delete "/logout", to: "sessions#destroy", as: :logout

  get "/game", to: "site#game", as: :game

  post "/save_game", to: "site#save_game"

  get "/play_game/8", to: "site#load_game"

end
