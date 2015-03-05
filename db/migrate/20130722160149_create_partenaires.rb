class CreatePartenaires < ActiveRecord::Migration
  def change
    create_table :partenaires do |t|
      t.text :description
      t.attachment :image

      t.timestamps
    end
  end
end
