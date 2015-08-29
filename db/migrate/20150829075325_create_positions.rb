class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :user_id
      t.integer :positionable_id
      t.string :positionable_type
      t.string :title
      t.string :description
      t.date :tenure_start
      t.date :tenure_end

      t.timestamps null: false
    end
  end
end
