class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :name
      t.json :properties
      t.integer :org_id

      t.timestamps null: false
    end

    add_index :galleries, :org_id

  end
end
