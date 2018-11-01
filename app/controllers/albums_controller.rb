class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @album = Album.where(title: params[:title].gsub("_", ' ')).first
    @pictures = @album.pictures.where('visible = ? or id = ?', true, params[:query2].to_i  ).order('created_at ASC')
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(album_param)
    if @album.save
      redirect_to category_path(@album.category)
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_param)
      redirect_to category_path(@album.category)
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @category = @album.category
    @album.destroy
    redirect_to category_path(@category)
  end

  def album_param
    params.require(:album).permit(
      :title, :subtitle, :subtitle, :category_id
    )
  end
end

