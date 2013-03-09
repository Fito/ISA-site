class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :url
      t.string :file_type
      t.integer :post_id

      t.timestamps
    end
  end
end
