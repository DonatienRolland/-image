class UsersController < ApplicationController
  def edit
    @user = current_user
    @category = Category.new
  end

  def update
    @user = current_user
    if @user.update(user_params)
      if params[:commit] == "Visualiser"
        redirect_to auteure_path(query: "Visualiser", query2: @user, queryUpdate:"true")
      else
        redirect_to edit_user_path
      end
    else
      redirect_to edit_user_path
    end
  end

  def user_params
    params.require(:user).permit(
      :intro, :description, :photo, :motto, :thanks, :visible
    )
  end
end
