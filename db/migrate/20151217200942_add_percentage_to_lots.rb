class AddPercentageToLots < ActiveRecord::Migration[5.1]
  def change
    add_column :lots, :percentage, :integer
  end
end
