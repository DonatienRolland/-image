class Album < ApplicationRecord
  belongs_to :category
  has_many :pictures

end
