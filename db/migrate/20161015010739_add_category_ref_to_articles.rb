class AddCategoryRefToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :category, foreign_key: true, null: false
  end
end
