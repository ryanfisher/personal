class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.boolean :published
      t.date :published_on

      t.timestamps
    end
  end
end
