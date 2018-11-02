class AddHauteurToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hauteur, :integer
  end
end
