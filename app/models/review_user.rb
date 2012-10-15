class ReviewUser < ActiveRecord::Base
  attr_accessible :address_auth_st, :aff_code, :aff_data, :auth_expire, :birthday, :carrier, :company_name, :corp_f_name, :corp_l_name, :department_name, :easy_login_flg, :errmail_num, :favorite_num, :image_h, :image_id, :image_key, :image_name, :image_w, :intro, :main_terminal, :mb_email_cd, :mb_email_domain, :mb_email_id, :mb_email_st, :mb_mmgok_flg, :mm_left, :mmdl_err_num, :model_name, :new_ans, :new_rev_cmmt, :nickname, :ope_cmmt, :partner_id, :password, :password_cd, :pc_email_cd, :pc_email_domain, :pc_email_id, :pc_email_st, :pc_mmgok_flg, :phone_auth_st, :point, :post_public, :pref_id, :reg_date, :serial_id, :serv_st, :sex_type, :subscr_id, :tmp_mb_email_domain, :tmp_mb_email_id, :tmp_pc_email_domain, :tmp_pc_email_id, :tmp_point, :user_code, :user_st, :user_type, :withdraw_date

  has_many :reviews
end
