class Review < ActiveRecord::Base
  attr_accessible :advice, :cen_date, :cen_flg, :cen_memo, :cen_staff_id, :column_change_flg, :comment, :comment_length, :del_flg, :del_user_id, :discrimination, :eval_total, :explicit_relationship, :id, :image_cmmt1, :image_cmmt10, :image_cmmt11, :image_cmmt12, :image_cmmt2, :image_cmmt3, :image_cmmt4, :image_cmmt5, :image_cmmt6, :image_cmmt7, :image_cmmt8, :image_cmmt9, :image_id1, :image_id10, :image_id11, :image_id12, :image_id2, :image_id3, :image_id4, :image_id5, :image_id6, :image_id7, :image_id8, :image_id9, :mb_mail, :mod_date, :pc_mail, :place_id, :point, :point_reason, :pv_num, :rank_st, :reg_date, :review_type, :review_type_detail, :review_user_id, :staged_flg, :total_good_num, :total_num, :trace_code, :update_cnt, :useful_good_num, :useful_num, :visit_date

  belongs_to :review_user
  #belongs_to :reply
  has_one :reply
end
