class Category < ApplicationRecord
  before_save :capitalize_title

  has_many :albums
  has_many :pictures, through: :albums
  accepts_nested_attributes_for :albums


  def capitalize_title
    self.title.capitalize
  end

  def title_no_space
    self.title.gsub(" ", '_')
  end
  def title_with_space
    self.title.gsub("_", ' ')
  end

end
