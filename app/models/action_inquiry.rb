class ActionInquiry < ActiveRecord::Base
  attr_accessible :action_type, :action_user_id, :b_user_id, :client_id, :comment, :del_flg, :inquiry_type, :misc, :place_id, :reg_date, :reply_date, :reply_memo, :reply_status, :src_id, :terminal_type, :text
end
