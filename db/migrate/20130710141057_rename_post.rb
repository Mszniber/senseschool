class RenamePost < ActiveRecord::Migration
  def change
  	rename_column :posts, :idee, :defi
  	rename_column :posts, :but, :mission
  	add_column :posts, :partenaire_1, :string
  	add_column :posts, :partenaire_2, :string
  	add_column :posts, :partenaire_3, :string
  	add_column :posts, :partenaire_4, :string
  	add_column :posts, :partenaire_5, :string
  end
end
