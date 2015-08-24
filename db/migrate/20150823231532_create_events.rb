class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :competiton_id

      t.timestamps null: false
    end
  end
end
