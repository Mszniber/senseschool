class CreateLiens < ActiveRecord::Migration
  def change
    create_table :liens do |t|
      t.string :link

      t.timestamps
    end
  end
end
