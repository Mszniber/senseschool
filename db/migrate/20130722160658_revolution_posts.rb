class RevolutionPosts < ActiveRecord::Migration
  def change
  	remove_attachment :posts, :imagep1
  	remove_attachment :posts, :imagep2
  	remove_attachment :posts, :imagep3
  	remove_attachment :posts, :imagep4
  	remove_attachment :posts, :imagep5
  	add_column :posts, :date_depart, :date
  	add_column :posts, :date_fin, :date
  end
end
