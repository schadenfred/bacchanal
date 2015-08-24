class AddOrgIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :org_id, :integer
  end
end
