class Reply < ActiveRecord::Base
  attr_accessible :b_user_id, :charge_image_id, :charge_image_title, :content, :del_flg, :image_id1, :image_id2, :image_id3, :image_title1, :image_title2, :image_title3, :place_id, :post_date, :reply_st, :review_id, :staff_name

  has_many :reviews
end
