class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :commenter_id
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps null: false
    end
  end
end
