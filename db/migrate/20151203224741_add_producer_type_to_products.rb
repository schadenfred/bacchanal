class AddProducerTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :produceable_type, :string
    add_column :products, :produceable_id, :integer
    add_column :products, :orgable_type, :string
    add_column :products, :orgable_id, :integer
  end
end
