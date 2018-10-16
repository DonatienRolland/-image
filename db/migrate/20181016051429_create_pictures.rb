class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :title
      t.integer :hauteur
      t.integer :rotation
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
