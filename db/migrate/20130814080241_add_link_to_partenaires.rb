class AddLinkToPartenaires < ActiveRecord::Migration
  def change
    add_column :partenaires, :link, :string
  end
end
