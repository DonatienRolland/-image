class AddSubtitleToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :subtitle, :string
  end
end
