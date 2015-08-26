class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :content
      t.string :title
      t.string :slug
      t.integer :author_id
      t.string :bloggable_type
      t.integer :bloggable_id

      t.timestamps null: false
    end

    add_index "articles", ["slug"], name: "index_articles_on_slug", using: :btree

  end
end
