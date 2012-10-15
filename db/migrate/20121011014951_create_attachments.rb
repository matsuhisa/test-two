class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :user_id
      t.integer :attachment_file_id
      t.string :attachment_key
      t.integer :status
      t.integer :attachment_type
      t.integer :plan_id
      t.integer :place_id
      t.integer :parent_id
      t.string :parent_type
      t.date :photo_date
      t.integer :category_1_id
      t.integer :category_2_id
      t.integer :turn
      t.integer :mod_date
      t.integer :reg_date
      t.integer :rel_level
      t.integer :pv_num
      t.integer :del_flg
      t.integer :cen_flg
      t.integer :official_flg
      t.text :caption
      t.integer :priority

      t.timestamps
    end
  end
end
