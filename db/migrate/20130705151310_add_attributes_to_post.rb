class AddAttributesToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :idee, :text
  	add_column :posts, :but, :text
  	add_column :posts, :competences, :text
  	add_column :posts, :gain, :text
  	end
end
