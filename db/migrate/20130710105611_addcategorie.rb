class Addcategorie < ActiveRecord::Migration
  def change
  	remove_column :posts, :genre_id, :integer
  	add_column :posts, :categorie_id, :integer
  end
end
