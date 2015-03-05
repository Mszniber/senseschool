class CreateVidposts < ActiveRecord::Migration
  def change
    create_table :vidposts do |t|
      t.string :link
      t.integer :post_id

      t.timestamps
    end
    add_column :posts, :term, :boolean
    add_column :posts, :link_book, :string
  end
end
