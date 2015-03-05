class AddDateparuToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :dateparu, :date
  end
end
