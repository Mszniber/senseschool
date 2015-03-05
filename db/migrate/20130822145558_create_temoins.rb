class CreateTemoins < ActiveRecord::Migration
  def change
    create_table :temoins do |t|
      t.string :nom
      t.text :phrase
      t.attachment :image

      t.timestamps
    end
  end
end
