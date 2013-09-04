Bookmarkmanager::Application.routes.draw do
  get "bookmarks/edit"

  get "bookmarks/new"

  get "bookmarks" => "bookmarks#index"
end
