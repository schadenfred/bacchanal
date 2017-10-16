class AddFaxToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :fax, :string
  end
end
