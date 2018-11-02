class UsersController < ApplicationController
  def edit
    @user = current_user
    @category = Category.new
  end


  def update
    @user = current_user
    if params[:commit] == "Visualiser"
      @user.visible = false
      @user.update_attributes!(user_params_without_visibility_params)
      redirect_to auteure_path(query: "Visualiser", query2: @user, queryUpdate:"true")
    else
      @user.visible = true
      @user.update_attributes!(user_params)
      redirect_to edit_user_path
    end
  end

  def user_params
    params.require(:user).permit(
      :intro, :description, :photo, :motto, :thanks
    )
  end

  def user_params_without_visibility_params
    params.require(:user).permit(
      :intro, :description, :photo, :motto, :thanks, :hauteur
    )
  end
end
