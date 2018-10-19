class PicturesController < ApplicationController
  def new
    @picture = Picture.new
    @category = Category.find(params[:category_id])
  end

  def create
    @picture = Picture.new(picture_params)
    @category = @picture.album.category
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
      # TODO SAVE ROTATION IN CLOUDINARY
      redirect_to category_path(@category)
    else
      raise
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @category = @picture.album.category
    @picture.destroy
    redirect_to category_path(@category)
  end

  def edit
    @picture = Picture.find(params[:id])
    @category = @picture.album.category
  end

  def de

  end

  def picture_rotation
    params.require(:picture).permit(:rotation)
  end

  def picture_params
    params.require(:picture).permit(:photo, :title, :hauteur, :rotation, :album_id)
  end
end
