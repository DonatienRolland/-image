class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :auteure, :mentionslegales]

  def home

  end

  def auteure

  end

  def mentionslegales

  end
end
