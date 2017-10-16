class AddBlogTitleToOrgs < ActiveRecord::Migration[5.1]
  def change
    add_column :orgs, :blog_title, :string
  end
end
