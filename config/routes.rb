Rails.application.routes.draw do
  devise_for :users
  root "blog#news"

  get "news", to: "blog#news"
  get "game_updates", to: "blog#game_updates"
  get "champions", to: "blog#champions"
  get "routes", to: "blog#routes"
  get "items", to: "blog#items"
  get "game_modes", to: "blog#game_modes"
  get "policy", to: "blog#policy"
  get "staff_area", to: "blog#staff_area"

  resources :articles, except: :index do
    resources :likes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
