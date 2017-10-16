class CreateCurations < ActiveRecord::Migration[5.1]
  def change
    create_table :curations do |t|
      t.string :curatable_type
      t.integer :curatable_id
      t.integer :review_id

      t.timestamps null: false
    end

    add_index :curations, [:curatable_id, :curatable_type]
  end
end
