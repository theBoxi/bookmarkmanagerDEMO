class BookmarksController < ApplicationController
  def index
    @bookmarks = ["http://www.tagesanzeiger.ch", "http://www.golem.de"]
  end

  def edit
  end

  def new
  end
end
