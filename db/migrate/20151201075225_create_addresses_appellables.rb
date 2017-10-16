class CreateAddressesAppellables < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses_appellables do |t|
      t.integer :address_id
      t.integer :appellation_id

      t.timestamps null: false
    end

    add_index :addresses_appellables, [:address_id, :appellation_id]
  end
end
