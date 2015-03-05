class AddEntrepreneurIdToVidents < ActiveRecord::Migration
  def change
    add_column :vidents, :entrepreneur_id, :integer
  end
end
