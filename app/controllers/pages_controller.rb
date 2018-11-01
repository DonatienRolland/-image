class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :auteure]

  def home
    @category = Category.new
  end
  def auteure
    @category = Category.new
    @user = User.first
  end
end
