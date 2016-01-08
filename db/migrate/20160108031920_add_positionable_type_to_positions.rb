class AddPositionableTypeToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :positionable_type, :string
    add_column :positions, :positionable_id, :integer
    remove_column :positions, :org_id
    add_index :positions, [:positionable_id, :positionable_type]
  end
end
