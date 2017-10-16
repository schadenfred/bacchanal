class AddPolymorphismToIdentities < ActiveRecord::Migration[5.1]
  def change
    add_column :identities, :identifiable_id, :integer
    add_column :identities, :identifiable_type, :string

    remove_column :identities, :user_id, :integer

    add_index :identities, [:identifiable_id, :identifiable_type]


  end
end
