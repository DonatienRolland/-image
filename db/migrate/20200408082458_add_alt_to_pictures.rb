class AddAltToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :alt, :string
  end
end
