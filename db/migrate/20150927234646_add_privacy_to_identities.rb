class AddPrivacyToIdentities < ActiveRecord::Migration[5.1]
  def change
    add_column :identities, :private, :boolean
  end
end
