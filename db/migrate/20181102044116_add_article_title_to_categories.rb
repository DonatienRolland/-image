class AddArticleTitleToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :article_title, :string
  end
end
