class AddLogoIdToOrgs < ActiveRecord::Migration[5.1]
  def change
    add_column :orgs, :logo_id, :integer
  end
end
