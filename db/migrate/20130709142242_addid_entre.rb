class AddidEntre < ActiveRecord::Migration
  def change
  	remove_column :posts, :entrepreneur_nom, :string
  	add_column :posts, :entrepreneur_id, :integer
  end
end
