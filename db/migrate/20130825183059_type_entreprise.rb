class TypeEntreprise < ActiveRecord::Migration
  def change
  	remove_column :entreprises, :type
  	add_column :entreprises, :sort, :integer
  end
end
