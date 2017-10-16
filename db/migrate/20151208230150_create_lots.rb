class CreateLots < ActiveRecord::Migration[5.1]
  def change
    create_table :lots do |t|
      t.integer :product_id
      t.integer :farm_id

      t.timestamps null: false
    end

    add_column :orgs, :parent_id, :integer
  end
end
