class ActionFair < ActiveRecord::Base
  attr_accessible :action_type, :action_user_id, :b_user_id, :client_id, :comment_1, :comment_2, :del_flg, :desired_time, :fair_id, :misc, :place_id, :reg_date, :reply_date, :reply_memo, :reply_status, :reserve_num, :src_id, :terminal_type
end
