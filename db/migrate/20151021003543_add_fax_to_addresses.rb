class AddFaxToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :fax, :string
  end
end
