class ActionUser < ActiveRecord::Base
  attr_accessible :action_id, :action_type, :address1, :address2, :address3, :aff_code, :aff_data, :age, :carrier, :del_flg, :discrimination, :email_account, :email_domain, :f_name, :f_name_kana, :f_name_kana_p, :f_name_p, :group, :l_name, :l_name_kana, :l_name_kana_p, :l_name_p, :pref_id, :reg_date, :sex_type, :staff_memo, :sub, :tel, :user_id, :useragent, :zip_code
end
