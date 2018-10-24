class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @album = Album.where(title: params[:title].gsub("_", ' ')).first
  end
end

