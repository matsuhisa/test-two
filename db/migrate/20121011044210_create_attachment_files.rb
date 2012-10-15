class CreateAttachmentFiles < ActiveRecord::Migration
  def change
    create_table :attachment_files do |t|
      t.integer :status
      t.integer :reg_date
      t.integer :user_id
      t.integer :use_type
      t.string :file_name
      t.integer :image_width
      t.integer :image_height
      t.integer :cen_flg
      t.integer :cen_date
      t.integer :file_type
      t.integer :cen_staff_id
      t.text :memo
      t.string :content_type
      t.string :file_size

      t.timestamps
    end
  end
end
