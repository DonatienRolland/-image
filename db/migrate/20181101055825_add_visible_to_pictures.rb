class AddVisibleToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :visible, :boolean, :default => false
  end
end
