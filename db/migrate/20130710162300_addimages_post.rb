class AddimagesPost < ActiveRecord::Migration
  def change
  	add_attachment :posts, :image
  	add_attachment :posts, :imagep1
  	add_attachment :posts, :imagep2
  	add_attachment :posts, :imagep3
  	add_attachment :posts, :imagep4
  	add_attachment :posts, :imagep5
  end
end
