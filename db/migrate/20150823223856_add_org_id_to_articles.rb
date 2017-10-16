class AddOrgIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :org_id, :integer
  end
end
