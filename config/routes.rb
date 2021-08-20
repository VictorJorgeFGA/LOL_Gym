Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
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
    
    resources :comments, only: [:create, :destroy]
    patch 'comments_section/:state', to: "articles#comments_section", as: 'comments_section'
  end
end
