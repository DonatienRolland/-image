class AddSubtitleToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :subtitle, :string
  end
end
