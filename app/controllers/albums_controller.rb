class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  skip_before_action :verify_authenticity_token, only: [:sort]
  def show
    @album = Album.where(title: params[:title].gsub("_", ' ')).first
    @pictures = @album.pictures.where('visible = ? or id = ?', true, params[:query2].to_i  ).order('created_at ASC')
  end

  def new
    @album = Album.new
    @category = Category.find(params[:category_id])
  end

  def edit
    @album = Album.find(params[:id])
    @category = @album.category
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

  def sort
    params[:params_value].each_with_index do |id, index|
      p "id:#{id} index:#{index} alors?"
      alb = Album.where(id: id.to_i).first
      p alb
      if alb.update(position: index + 1)
        p "c'est uploadé #{Album.where(id: id.to_i).first.position}"
      else
        p "ce n'est pas uploadé"
      end
    end
    head :ok
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

