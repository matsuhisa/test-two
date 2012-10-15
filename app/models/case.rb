class Case < ActiveRecord::Base
  attr_accessible :attachment_file_id, :client_id, :del_flg, :etc, :inv_num, :mod_date, :name, :place_id, :plan_type, :prepare_type, :reg_date, :sort_number, :status, :wedding_date
end
