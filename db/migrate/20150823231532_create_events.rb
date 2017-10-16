class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :competiton_id

      t.timestamps null: false
    end
  end
end
