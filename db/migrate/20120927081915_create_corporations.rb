class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :name
      t.string :department_name
      t.string :corp_l_name
      t.string :corp_f_name
      t.integer :admin_type
      t.string :tel
      t.string :zip_code
      t.integer :pref_id
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :bank_account
      t.string :bank_account1
      t.string :bank_account2
      t.text :sales_memo
      t.integer :reg_date
      t.integer :mod_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
