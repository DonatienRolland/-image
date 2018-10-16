class Album < ApplicationRecord
  belongs_to :categorie
  has_many :pictures

end
