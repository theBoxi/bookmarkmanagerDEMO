Bookmarkmanager::Application.routes.draw do
  get "bookmarks" => "bookmarks#index", as: "bookmarks"
  get "bookmarks/new", as: "new_bookmark"
  get "bookmarks/:id" => "bookmarks#show", as: "bookmark"
  get "bookmarks/:id/edit" => "bookmarks#edit", as: "edit_bookmark"
  post "bookmarks" => "bookmarks#create"
  put "bookmarks/:id" => "bookmarks#update"
  delete "bookmarks/:id" => "bookmarks#destroy", as: "bookmark"
end
