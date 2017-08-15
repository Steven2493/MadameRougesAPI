Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "menus#index"

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  get "/logout", to: "sessions#destroy"
end
