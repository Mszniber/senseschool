class AdaptePost < ActiveRecord::Migration
  def change
  	add_column :posts, :open, :boolean
  	remove_column :posts, :partenaire_1
  	remove_column :posts, :partenaire_2
  	remove_column :posts, :partenaire_3
  	remove_column :posts, :partenaire_4
  	remove_column :posts, :partenaire_5
  	add_column :posts, :liengf, :string
  end
end
