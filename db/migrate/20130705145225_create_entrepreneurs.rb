class CreateEntrepreneurs < ActiveRecord::Migration
  def change
    create_table :entrepreneurs do |t|
      t.string :nom
      t.text :description
      t.string :lien

      t.timestamps
    end
  end
end
