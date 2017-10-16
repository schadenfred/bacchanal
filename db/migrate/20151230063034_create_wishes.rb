class CreateWishes < ActiveRecord::Migration[5.1]
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
