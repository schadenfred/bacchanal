class AddPercentageToLots < ActiveRecord::Migration
  def change
    add_column :lots, :percentage, :integer
  end
end
