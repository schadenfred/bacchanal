class CreateAddressesAddressables < ActiveRecord::Migration
  def change
    create_table :addresses_addressables do |t|
      t.integer :address_id
      t.integer :addressable_id
      t.string :addressable_type
      t.string :name
      t.integer :address_function

      t.timestamps null: false
    end

    add_index :addresses_addressables, :address_id
    add_index :addresses_addressables, :addressable_id
  end
end
