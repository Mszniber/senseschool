class CreateEntImages < ActiveRecord::Migration
  def change
    create_table :ent_images do |t|
      t.attachment :image
      t.integer :entrepreneur_id

      t.timestamps
    end
  end
end
