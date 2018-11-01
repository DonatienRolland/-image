class Category < ApplicationRecord
  before_save :capitalize_title

  has_many :albums
  has_many :pictures, through: :albums
  accepts_nested_attributes_for :albums

  validates :title, presence: true

  def capitalize_title
    self.title.capitalize
  end

  def title_no_space
    self.title.gsub(" ", '_')
  end
  def title_with_space
    self.title.gsub("_", ' ')
  end

  def with_description?
    if self.description == "" || self.description == nil
      return true
    end
  end
end
