class Attachment < ActiveRecord::Base
  attr_accessible :attachment_file_id, :attachment_key, :attachment_type, :caption, :category_1_id, :category_2_id, :cen_flg, :del_flg, :mod_date, :official_flg, :parent_id, :parent_type, :photo_date, :place_id, :plan_id, :priority, :pv_num, :reg_date, :rel_level, :status, :turn, :user_id

  belongs_to :attachment_file
end
