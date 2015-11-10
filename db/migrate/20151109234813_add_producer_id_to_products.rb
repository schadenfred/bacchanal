class AddProducerIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :producer_id, :integer
  end
end
