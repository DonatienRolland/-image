class Album < ApplicationRecord
  belongs_to :category
  has_many :pictures, -> { order(position: :asc) }, dependent: :destroy

  default_scope { order(position: :asc) }
  # si on ne veut pas lutiliser mettre redorder la ou on veut sauter le par default_scope
  acts_as_list scope: :category

  def title_no_space
    self.title.gsub(" ", '_')
  end
  def title_with_space
    self.title.gsub("_", ' ')
  end

  def has_pictures?
    if self.picture_ids.count > 0 && self.pictures.where(visible: true).count > 0
      return true
    end
  end
end
