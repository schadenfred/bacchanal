class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :content
      t.string :title
      t.string :bloggable_type
      t.integer :bloggable_id

      t.timestamps null: false
    end
  end
end
