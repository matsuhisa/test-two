class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :place_id
      t.integer :review_id
      t.text :content
      t.string :staff_name
      t.integer :b_user_id
      t.integer :reply_st
      t.integer :post_date
      t.integer :charge_image_id
      t.string :charge_image_title
      t.integer :image_id1
      t.string :image_title1
      t.integer :image_id2
      t.string :image_title2
      t.integer :image_id3
      t.string :image_title3
      t.string :del_flg

      t.timestamps
    end
  end
end
