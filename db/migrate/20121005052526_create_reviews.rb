class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :id
      t.integer :review_user_id
      t.integer :review_type
      t.integer :review_type_detail
      t.integer :place_id
      t.integer :reg_date
      t.date :visit_date
      t.float :eval_total
      t.text :comment
      t.integer :explicit_relationship
      t.integer :comment_length
      t.string :advice
      t.integer :column_change_flg
      t.string :image_cmmt1
      t.string :image_cmmt2
      t.string :image_cmmt3
      t.string :image_cmmt4
      t.string :image_cmmt5
      t.string :image_cmmt6
      t.string :image_cmmt7
      t.string :image_cmmt8
      t.string :image_cmmt9
      t.string :image_cmmt10
      t.string :image_cmmt11
      t.string :image_cmmt12
      t.integer :image_id1
      t.integer :image_id2
      t.integer :image_id3
      t.integer :image_id4
      t.integer :image_id5
      t.integer :image_id6
      t.integer :image_id7
      t.integer :image_id8
      t.integer :image_id9
      t.integer :image_id10
      t.integer :image_id11
      t.integer :image_id12
      t.integer :useful_num
      t.integer :useful_good_num
      t.integer :total_num
      t.integer :total_good_num
      t.integer :pc_mail
      t.integer :mb_mail
      t.integer :point
      t.integer :rank_st
      t.integer :pv_num
      t.integer :mod_date
      t.integer :update_cnt
      t.integer :del_flg
      t.integer :del_user_id
      t.string :discrimination
      t.integer :cen_flg
      t.integer :cen_date
      t.integer :cen_staff_id
      t.text :cen_memo
      t.integer :staged_flg
      t.integer :point_reason
      t.integer :trace_code

      t.timestamps
    end
  end
end
