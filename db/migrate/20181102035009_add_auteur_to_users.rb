class AddAuteurToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :auteur, :boolean, :default => false
  end
end
