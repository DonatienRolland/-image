class RenameAltToPictures < ActiveRecord::Migration[5.2]
  def change
    rename_column :pictures, :alt, :tags
  end
end
