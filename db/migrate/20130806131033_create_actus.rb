class CreateActus < ActiveRecord::Migration
  def change
    create_table :actus do |t|

      t.timestamps
    end
  end
end
