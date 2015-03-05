class ChangeActus < ActiveRecord::Migration
  def change
  	add_column :actus, :titre, :string
  	add_column :actus, :texte, :text
  	add_column :videos, :actu_id, :integer
  	add_column :actu_images, :actu_id, :integer
  	add_column :liens, :actu_id, :integer
  end
end
