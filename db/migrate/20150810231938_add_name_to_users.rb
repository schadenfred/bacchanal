class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string

    add_index :users, :name
    add_index :users, [:invited_by_id, :invited_by_type]
  end

end
