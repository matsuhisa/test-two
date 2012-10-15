class AttachmentFile < ActiveRecord::Base
  attr_accessible :cen_date, :cen_flg, :cen_staff_id, :content_type, :file_name, :file_size, :file_type, :image_height, :image_width, :memo, :reg_date, :status, :use_type, :user_id
end
