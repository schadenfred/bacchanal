class AddIndexToWinesTable < ActiveRecord::Migration[5.1]
  def change
    add_index :products, :properties, using: :gist
  end
end
