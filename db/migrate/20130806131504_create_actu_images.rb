class CreateActuImages < ActiveRecord::Migration
  def change
    create_table :actu_images do |t|
      t.attachment :image

      t.timestamps
    end
  end
end
