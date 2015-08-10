class CreateProducers < ActiveRecord::Migration
  def change

    enable_extension "hstore"

    create_table :producers do |t|
      t.string :name
      t.string :slug
      t.hstore :facets

      t.timestamps null: false
    end
  end
end
