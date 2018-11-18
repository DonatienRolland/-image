class Picture < ApplicationRecord
  belongs_to :album
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true

  default_scope { order(position: :asc) }

  acts_as_list scope: :album

  def rotation_vertical?
    if self.rotation == 90 || self.rotation == 270
      return true
    end
  end
  def align_with_the_rotation
    if self.rotation == 0
      return "left"
    elsif self.rotation == 90
      return "bottom"
    elsif self.rotation == 180
      return "right"
    else self.rotation == 270
      return "top"
    end
  end
end
