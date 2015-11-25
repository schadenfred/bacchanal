class AddGalleriableTypeToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :galleriable_type, :string
    add_column :galleries, :galleriable_id, :integer
    remove_index :galleries, :org_id
    remove_column :galleries, :org_id, :integer
    add_index :galleries, [:galleriable_id, :galleriable_type]
  end
end
