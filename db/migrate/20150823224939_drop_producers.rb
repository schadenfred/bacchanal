class DropProducers < ActiveRecord::Migration
  def change
    drop_table :producers
  end
end
