class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :set_categories

  def set_categories
    @categories ||= Category.all
  end

end
