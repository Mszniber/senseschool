class DropCreatePosts < ActiveRecord::Migration
  def change
  	drop_table :posts
  	create_table :posts do |t|
      t.string :title
      t.text :defi
	  t.text :mission
	  t.text :competences
	  t.text :gain
	  t.string :lieny
	  t.string :liendb
	  t.string :link
	  t.integer :entrepreneur_id
	  t.integer :categorie_id
	  t.date :date_debut
	  t.date :date_fin
	  t.boolean :open
	  t.string :liengf
	  t.boolean :term
	  t.date :dfins
	  t.attachment :calendar
  	end
  end
end
