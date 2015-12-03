class RenameProducerIdToOrgIdOnProducts < ActiveRecord::Migration
  def change
    rename_column :products, :producer_id, :org_id
  end
end
