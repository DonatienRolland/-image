class AddInfosToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :users, :description, :string
    add_column :users, :intro, :text
    add_column :users, :motto, :string
    add_column :users, :thanks, :text
  end
end
