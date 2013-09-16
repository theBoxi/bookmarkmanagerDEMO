Bookmarkmanager::Application.routes.draw do
  resources :bookmarks
  resources :users, only: [:new, :create]
  get "login" => "sessions#new", as: "login"
  post "sessions" => "sessions#create", as: "sessions"
  delete "logout" => "sessions#destroy", as: "logout"
end
