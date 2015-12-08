class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.integer :product_id
      t.integer :farm_id

      t.timestamps null: false
    end
  end
end
