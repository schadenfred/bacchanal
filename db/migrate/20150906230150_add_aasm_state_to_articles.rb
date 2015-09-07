class AddAasmStateToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :aasm_state, :string
  end
end
