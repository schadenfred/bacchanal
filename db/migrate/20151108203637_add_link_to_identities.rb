class AddLinkToIdentities < ActiveRecord::Migration[5.1]
  def change
    add_column :identities, :link, :string
  end
end
