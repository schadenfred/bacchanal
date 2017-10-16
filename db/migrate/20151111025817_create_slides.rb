class CreateSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :slides do |t|
      t.integer :gallery_id
      t.integer :photo_id
      t.hstore :properties

      t.timestamps null: false
    end

    add_index :slides, [:photo_id, :gallery_id]
  end
end
