class ChangePost < ActiveRecord::Migration
  def change
  	add_column :posts, :lieny, :text
  	add_column :posts, :liendb, :text
  	remove_column :posts, :text, :text
  end
end
