class CreateVidents < ActiveRecord::Migration
  def change
    create_table :vidents do |t|
      t.string :link

      t.timestamps
    end
    add_column :entrepreneurs, :nbp, :text
    add_column :entrepreneurs, :lien2, :string
  end
end
