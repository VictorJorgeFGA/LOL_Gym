Rails.application.routes.draw do
  root "blog#news"

  get 'blog/news'
  get 'blog/game_updates'
  get 'blog/champions'
  get 'blog/routes'
  get 'blog/items'
  get 'blog/game_modes'
  get 'blog/policy'
  get 'blog/staff_area'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
