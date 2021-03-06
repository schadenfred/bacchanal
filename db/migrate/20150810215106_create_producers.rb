class CreateProducers < ActiveRecord::Migration[5.1]
  def change

    enable_extension "hstore"

    create_table :producers do |t|
      t.string :name
      t.string :type
      t.string :slug
      t.hstore :properties

      t.timestamps null: false
    end

    add_index :producers, :name
    add_index :producers, :slug
  end
end
