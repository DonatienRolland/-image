class AddPositionToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :position, :integer
  end
end
