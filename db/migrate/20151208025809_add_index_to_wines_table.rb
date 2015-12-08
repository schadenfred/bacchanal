class AddIndexToWinesTable < ActiveRecord::Migration
  def change
    add_index :products, :properties, using: :gist
  end
end
