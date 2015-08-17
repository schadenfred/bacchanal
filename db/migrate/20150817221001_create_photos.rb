class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_uid
      t.string :image_name
      t.string :name
      t.string :caption

      t.timestamps null: false
    end
  end
end
