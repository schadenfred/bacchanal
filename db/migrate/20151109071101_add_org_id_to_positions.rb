class AddOrgIdToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :org_id, :integer

    remove_column :positions, :positionable_id, :integer
    remove_column :positions, :positionable_type, :string
    add_index :positions, :user_id
    add_index :positions, :org_id
    add_index :positions, :title
    add_index :positions, :tenure_start
    add_index :positions, :tenure_end
  end

  def down
    remove_index :positions, [:positionable_id, :positionable_type]
  end
end
