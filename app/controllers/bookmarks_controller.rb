#encoding: utf-8

class BookmarksController < ApplicationController
  before_filter :require_login

  def index
    @bookmarks = current_user.bookmarks
  end

  def show
    @bookmark = current_user.bookmarks.find(params[:id])
  end

  def edit
    @bookmark = current_user.bookmarks.find(params[:id])
  end

  def update
    @bookmark = current_user.bookmarks.find(params[:id])
    if @bookmark.update_attributes(params[:bookmark])
      redirect_to bookmarks_path, notice: 'Link wurde erfolgreich angelegt!'
    else
      render "edit"
    end
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = current_user.bookmarks.build(params[:bookmark])
    if @bookmark.save
      redirect_to bookmarks_path, notice: 'Link wurde erfolgreich erstellt!'
    else
      render "new"
    end
  end

  def destroy
    @bookmark = current_user.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_url, notice: 'Link wurde erfolgreich gelöscht!'
  end

  private

  def require_login
    unless user_signed_in?
      redirect_to login_path, alert: "Bitte melden Sie sich an."
    end
  end
end
