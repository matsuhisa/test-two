class CreateReviewUsers < ActiveRecord::Migration
  def change
    create_table :review_users do |t|
      t.integer :user_type
      t.integer :reg_date
      t.integer :withdraw_date
      t.integer :user_st
      t.integer :serv_st
      t.string :sex_type
      t.date :birthday
      t.integer :pref_id
      t.string :nickname
      t.string :company_name
      t.string :department_name
      t.string :corp_f_name
      t.string :corp_l_name
      t.integer :image_id
      t.integer :image_name
      t.integer :image_w
      t.integer :image_h
      t.integer :image_key
      t.text :intro
      t.integer :partner_id
      t.integer :post_public
      t.integer :favorite_num
      t.integer :point
      t.integer :tmp_point
      t.integer :mm_left
      t.integer :new_ans
      t.integer :new_rev_cmmt
      t.string :aff_code
      t.string :aff_data
      t.integer :auth_expire
      t.integer :easy_login_flg
      t.integer :pc_mmgok_flg
      t.integer :mb_mmgok_flg
      t.string :password
      t.string :password_cd
      t.integer :mmdl_err_num
      t.integer :errmail_num
      t.integer :pc_email_st
      t.string :pc_email_id
      t.string :pc_email_domain
      t.string :pc_email_cd
      t.string :tmp_pc_email_id
      t.string :tmp_pc_email_domain
      t.integer :mb_email_st
      t.string :mb_email_id
      t.string :mb_email_domain
      t.string :tmp_mb_email_id
      t.string :tmp_mb_email_domain
      t.string :mb_email_cd
      t.integer :address_auth_st
      t.string :model_name
      t.string :carrier
      t.string :user_code
      t.string :subscr_id
      t.string :serial_id
      t.integer :ope_cmmt
      t.integer :main_terminal
      t.integer :phone_auth_st

      t.timestamps
    end
  end
end
