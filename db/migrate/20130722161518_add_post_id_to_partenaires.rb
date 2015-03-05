class AddPostIdToPartenaires < ActiveRecord::Migration
  def change
    add_column :partenaires, :post_id, :integer
  end
end
