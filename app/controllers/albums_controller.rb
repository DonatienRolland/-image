class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @album = Album.where(title: params[:title].gsub("_", ' ')).first
    @pictures = @album.pictures.order('created_at ASC')

  end
  def destroy
    @album = Album.find(params[:id])
    @category = @album.category
    @album.destroy
    redirect_to category_path(@category)
  end
end

