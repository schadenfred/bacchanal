class AddPrivacyToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :private, :boolean
  end
end
