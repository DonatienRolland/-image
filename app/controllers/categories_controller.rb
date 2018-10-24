class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:presentation]

  def show
    @category = Category.find(params[:id])
    @album = Album.new
  end


  def update
    @category = Category.find(params[:id])
    if @category.update(category_param)
      redirect_to category_path(@category)
    else
      redirect_to category_path(@category)
    end
  end

  def presentation
    @category = Category.where(title: params[:title].gsub("_", ' ')).first
  end


  def category_param
    params.require(:category).permit(
      albums_attributes: [ :id, :title ]
    )
  end
end

