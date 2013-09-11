Bookmarkmanager::Application.routes.draw do
  get "bookmarks/:id/edit" => "bookmarks#edit", as: "edit_bookmark"

  get "bookmarks/new", as: "new_bookmark"

  get "bookmarks" => "bookmarks#index", as: "bookmarks"

  get "bookmarks/:id" => "bookmarks#show", as: "bookmark"

  post "bookmarks" => "bookmarks#create"

  put "bookmarks/:id" => "bookmarks#update"

  delete "bookmark/:id" => "bookmarks#destroy", as: "bookmark"
end
