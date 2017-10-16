class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps null: false
    end

    add_index :addresses, [:city, :state]
    add_index :addresses, :zip

  end
end
