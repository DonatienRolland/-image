class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :auteure]

  def home
    @category = Category.new
  end
  def auteure
    @category = Category.new
    @user = User.first

    revisions = @user.revisions
    validated = []
    unvalidated = []
    revisions.each do |revision|
      if revision.visible
        validated << revision
      else
        unvalidated << revision
      end
    end
    if params[:query] == "Visualiser"
      @auteur = unvalidated.last
    else
      @auteur = validated.last
    end
    # raise
  end
end
