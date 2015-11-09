class AddLinkToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :link, :string
  end
end
