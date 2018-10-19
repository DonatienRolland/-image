class AlbumsController < ApplicationController
  def show
    @album = Album.where(title: params[:title].gsub("_", ' ')).first
  end
end
