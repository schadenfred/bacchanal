class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.integer :wine_id
      t.integer :reviewer_id

      t.timestamps null: false
    end

    add_index :reviews, [:reviewer_id, :wine_id]
  end
end
