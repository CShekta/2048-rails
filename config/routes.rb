Rails.application.routes.draw do
  root "site#index"
  match "/auth/:provider/callback", to: "sessions#create", via: [:get, :post]
  get "/game", to: "site#game"

end
