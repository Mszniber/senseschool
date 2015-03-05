class CreateTemoins2 < ActiveRecord::Migration
  def change
  	drop_table :temoins
    create_table :temoins do |t|
      t.string :nom
      t.text :phrase
      t.attachment :image
      t.attachment :imagecole

      t.timestamps
    end
  end
end
