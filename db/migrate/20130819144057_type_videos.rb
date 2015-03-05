class TypeVideos < ActiveRecord::Migration
  def change
  	add_column :vidposts, :youvim, :boolean
  	add_column :vidents, :youvim, :boolean
  	add_column :videos, :youvim, :boolean
  	remove_timestamps :actu_images
  	remove_timestamps :actus
  	remove_timestamps :categories
  	remove_timestamps :ent_images
  	remove_timestamps :entrepreneurs
  	remove_timestamps :liens
  	remove_timestamps :partenaires
  	remove_timestamps :posts
  	remove_timestamps :taggings
  	remove_timestamps :tags 
  	remove_timestamps :vidents
  	remove_timestamps :videos
  	remove_timestamps :vidposts
  end
end
