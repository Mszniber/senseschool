class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.attachment :image
      t.string :lien

      t.timestamps
    end
  end
end
