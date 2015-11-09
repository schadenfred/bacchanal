class AddLogoIdToOrgs < ActiveRecord::Migration
  def change
    add_column :orgs, :logo_id, :integer
  end
end
