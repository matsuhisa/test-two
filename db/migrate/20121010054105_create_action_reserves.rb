class CreateActionReserves < ActiveRecord::Migration
  def change
    create_table :action_reserves do |t|
      t.integer :id
      t.integer :action_user_id
      t.integer :client_id
      t.integer :b_user_id
      t.integer :place_id
      t.integer :number
      t.integer :date1
      t.integer :date2
      t.integer :date3
      t.string :weekday
      t.integer :date_fix
      t.text :text
      t.text :detail
      t.text :etc
      t.text :misc
      t.integer :reserve_type
      t.integer :action_type
      t.integer :src_id
      t.integer :reply_status
      t.integer :reply_date
      t.text :reply_memo
      t.integer :terminal_type
      t.integer :reg_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
