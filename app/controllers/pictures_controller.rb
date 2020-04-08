class PicturesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:sort]
  def new
    @picture = Picture.new
    @category = Category.find(params[:category_id])
  end

  def create
    @picture = Picture.new(picture_params)
    @category = @picture.album.category
    if @picture.save
      if params[:commit] == "Visualiser"
        redirect_to album_path(@picture.album.title_no_space, query: "Visualiser", query2: @picture, queryUpdate:"true")
      else
        redirect_to category_path(@category), notice: "Tu viens d'ajouter une nouvelle photo dans l'album: #{@picture.album.title}"
      end
    else
      flash.now[:alert] = "Il me manque des informations (#{alerte_create_picture})"
      render :new
    end
  end

  def update
    @picture = Picture.find(params[:id])
    @category = @picture.album.category
    if @picture.update(picture_params)
      if params[:commit] == "Visualiser"
        redirect_to album_path(@picture.album.title_no_space, query: "Visualiser", query2: @picture, queryUpdate:"true")
      elsif params[:query] == "checking-visibility"
        redirect_to category_path(@category, anchor: "album_#{@picture.album.id}")
      else
        redirect_to category_path(@category)
      end
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

  def alerte_create_picture
    if params[:picture][:title] == "" || params[:picture][:title] == nil
      title = nil
    else
      title = params[:picture][:title]
    end
    "#{ params[:picture][:photo].nil? ? "une photo" : ""} #{ params[:picture][:photo].nil? && title.nil? ? "/" : ""} #{ title.nil? ? "une titre" : ""}"
  end

  def sort
    params[:params_value].each_with_index do |id, index|
      p "id:#{id} index:#{index} alors?"
      picture = Picture.find(id)
      p picture
      if picture.update(position: index + 1)
        p "c'est uploadé #{Picture.where(id: id.to_i).first.position}"
      else
        p "ce n'est pas uploadé"
      end
    end
    # head :ok
  end

  def picture_rotation
    params.require(:picture).permit(:rotation)
  end

  def picture_params
    params.require(:picture).permit(:photo, :title, :hauteur, :rotation, :album_id, :visible, :tags)
  end
end
