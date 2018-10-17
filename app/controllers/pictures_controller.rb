class PicturesController < ApplicationController
  def new
    @picture = Picture.new
    @category = Category.find(params[:category_id])
  end

  def create
    @picture = Picture.new(picture_params)
    @category = Category.find(params[:category_id])
    if @picture.save
      redirect_to category_path(@category)
    else
      raise
    end
  end

  def update
    @picture = Picture.find(params[:id])
    @category = @picture.album.category
    if @picture.update(picture_params)
      redirect_to category_path(@category)
    else
      raise
    end
  end

  def edit
    @picture = Picture.find(params[:id])
    @category = @picture.album.category
  end

  def picture_params
    params.require(:picture).permit(:photo, :title, :hauteur, :rotation, :album_id)
  end
end
