class LastOne < ActiveRecord::Migration
  def change
  	add_column :temoins, :rang, :string
  	add_column :articles, :texte, :text
  end
end
