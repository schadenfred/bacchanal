class CreateAddressesAppellables < ActiveRecord::Migration
  def change
    create_table :addresses_appellables do |t|
      t.integer :address_id
      t.integer :appellation_id

      t.timestamps null: false
    end
  end
end
