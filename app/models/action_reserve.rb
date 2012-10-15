class ActionReserve < ActiveRecord::Base
  attr_accessible :action_type, :action_user_id, :b_user_id, :client_id, :date1, :date2, :date3, :date_fix, :del_flg, :detail, :etc, :id, :misc, :number, :place_id, :reg_date, :reply_date, :reply_memo, :reply_status, :reserve_type, :src_id, :terminal_type, :text, :weekday
end
