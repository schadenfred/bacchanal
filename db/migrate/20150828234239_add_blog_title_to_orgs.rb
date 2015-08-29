class AddBlogTitleToOrgs < ActiveRecord::Migration
  def change
    add_column :orgs, :blog_title, :string
  end
end
