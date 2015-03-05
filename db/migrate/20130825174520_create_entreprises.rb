class CreateEntreprises < ActiveRecord::Migration
  def change
    create_table :entreprises do |t|
      t.integer :type
      t.attachment :image
      t.string :lien

      t.timestamps
    end
  end
end
