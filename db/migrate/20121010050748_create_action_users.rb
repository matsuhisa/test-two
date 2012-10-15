class CreateActionUsers < ActiveRecord::Migration
  def change
    create_table :action_users do |t|
      t.integer :group
      t.integer :user_id
      t.string :sub
      t.integer :action_type
      t.integer :action_id
      t.string :f_name
      t.string :l_name
      t.string :f_name_kana
      t.string :l_name_kana
      t.string :sex_type
      t.string :age
      t.string :f_name_p
      t.string :l_name_p
      t.string :f_name_kana_p
      t.string :l_name_kana_p
      t.string :zip_code
      t.integer :pref_id
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :tel
      t.string :email_account
      t.string :email_domain
      t.string :carrier
      t.text :staff_memo
      t.string :aff_code
      t.string :aff_data
      t.string :discrimination
      t.text :useragent
      t.integer :reg_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
