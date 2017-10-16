class AddIndexToPositions < ActiveRecord::Migration[5.1]
  def change
    add_index :positions, [:positionable_id, :positionable_type]
    add_index :positions, [:title, :user_id]
  end
end
