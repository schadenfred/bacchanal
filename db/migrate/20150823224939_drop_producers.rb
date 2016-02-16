class DropProducers < ActiveRecord::Migration
  def up
    drop_table :producers
  end

  def down
    create_table :producers do |t|
      t.string :name
      t.string :type
      t.string :slug
      t.hstore :properties

      t.timestamps null: false
    end
  end
end
