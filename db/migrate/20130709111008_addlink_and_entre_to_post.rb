class AddlinkAndEntreToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :link, :string
  	add_column :posts, :entrepreneur_nom, :string
  end
end
