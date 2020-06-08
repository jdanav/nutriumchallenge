Rails.application.routes.draw do
  get 'search/search'

  resources :professionals

  root 'search#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
