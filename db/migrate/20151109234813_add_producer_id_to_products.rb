class AddProducerIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :producer_id, :integer
  end
end
