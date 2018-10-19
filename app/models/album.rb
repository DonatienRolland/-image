class Album < ApplicationRecord
  belongs_to :category
  has_many :pictures


  def title_no_space
    self.title.gsub(" ", '_')
  end
  def title_with_space
    self.title.gsub("_", ' ')
  end

end
