class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :set_categories, :set_auteur

  def set_categories
    @categories ||= Category.all
  end

  def set_auteur
    @user = User.where(auteur: true).first
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
  end
end
