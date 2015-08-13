class CreateWineries < ActiveRecord::Migration
  def change
    create_table :wineries do |t|

      t.timestamps null: false
    end
  end
end
