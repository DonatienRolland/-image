class AddPositionToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :position, :integer
  end
end
