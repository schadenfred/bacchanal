class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :attachment_uid
      t.string :attachment_name
      t.string :name
      t.string :summary

      t.timestamps null: false
    end
  end
end
