class AddPhotographerIdToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :photographer_id, :integer
    add_column :photos, :photographable_id, :integer
    add_column :photos, :photographable_type, :string
  end
end
