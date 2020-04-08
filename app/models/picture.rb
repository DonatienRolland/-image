class Picture < ApplicationRecord
  belongs_to :album
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true

  before_save :rotation_config

  default_scope { order(position: :asc) }

  acts_as_list scope: :album

  def rotation_vertical?
    if self.rotation == 90 || self.rotation == 270
      return true
    end
  end

  def height_or_width
    if self.rotation == 0 || self.rotation == 180
      return "height"
    else
      return "width"
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

  def alt
    if self.tags.present?
      return self.tags
    elsif self.title.present?
      return self.title
    else
      return "Chloé Rolland - Image / Photographie / Encadrement"
    end
  end

  private

  def rotation_config
    r = self.rotation
    if r != 0
      while r > 359
        r -= 360
      end
      self.rotation = 180 - r
    end
  end
end
