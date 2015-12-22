class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :attachment_uid
      t.string :attachment_name
      t.string :attachable_type
      t.integer :attachable_id

      t.string :name
      t.string :summary

      t.timestamps null: false
    end

    add_index :attachments, [:attachable_id, :attachable_type] 
    add_index :attachments, :attachment_uid 
  end
end
