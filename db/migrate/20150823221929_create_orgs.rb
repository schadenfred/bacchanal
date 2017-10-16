class CreateOrgs < ActiveRecord::Migration[5.1]
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :type
      t.string :slug
      t.hstore :properties

      t.timestamps null: false
    end

    add_index :orgs, :name
    add_index :orgs, :slug
  end
end
