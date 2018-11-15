class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:presentation]

  skip_before_action :verify_authenticity_token, only: [:sort]

  def show
    @category = Category.find(params[:id])
    @album = Album.new
  end

  def index
    @categories = Category.order(:position)
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_param)
      if params[:commit] == "Visualiser"
        redirect_to categories_title_path(title: @category.title_no_space, query: "Visualiser", query2: @category, queryUpdate:"true")
      elsif params[:commit]== 'Nouvelle position'
        redirect_to edit_user_registration_path
      else
        redirect_to category_path(@category)
      end
    else
      redirect_to category_path(@category)
    end
  end

  def create
    @category = Category.new(category_param)
    if @category.save
      if params[:commit] == "Visualiser"
        redirect_to categories_title_path(title: @category.title_no_space, query: "Visualiser", query2: @category, queryUpdate:"true")
      else
        redirect_to category_path(@category)
      end
    else
      redirect_to category_path(@category)
    end
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def presentation
    @category = Category.where(title: params[:title].gsub("_", ' ')).first
  end

 def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to category_path(Category.first)
  end

  def sort
    params[:params_value].each_with_index do |id, index|
      Category.where(id: id.to_i).update_all(position: index + 1)
    end
    head :ok
  end


  def category_param
    params.require(:category).permit(
      :title, :description, :subtitle, :visible, :article_title, :position,
      albums_attributes: [ :id, :title, :subtitle ]
    )
  end
end


