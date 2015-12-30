class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :user_id
      t.integer :quantity
      t.integer :product_id

      t.timestamps null: false
    end
  
    add_index :wishes, [:user_id, :product_id]
  end
end
