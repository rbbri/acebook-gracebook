class AlbumsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @album = Album.find()
  end

  def create
  end

  def edit
  end

  def update
    redirect_to "/users/#{params[:user_id]}/albums/show"
  end

  def destroy
  end
end
