class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nom

      t.timestamps
    end
    add_column :posts, :genre_id, :integer
  end
end
