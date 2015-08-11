class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.hstore :properties

      t.timestamps null: false
    end

    add_index :products, :name
    add_index :products, :slug
  end
end
