class AddIndexesToTables < ActiveRecord::Migration
  def change
    add_index :addresses_addressables, [:addressable_id, :addressable_type], name: :addressable
    add_index :articles, [:author_id]
    add_index :articles, [:org_id]
    add_index :comments, [:commenter_id]
    add_index :comments, [:commentable_id, :commentable_type]
    add_index :curations, [:review_id]
    add_index :lots, [:product_id]
    add_index :photos, [:photographer_id]
    add_index :photos, [:photographable_id, :photographable_type]
    remove_column :users, :avatar_id
    remove_column :articles, :bloggable_type
    remove_column :articles, :bloggable_id
  end
end
