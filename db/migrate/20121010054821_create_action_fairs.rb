class CreateActionFairs < ActiveRecord::Migration
  def change
    create_table :action_fairs do |t|
      t.integer :fair_id
      t.integer :action_user_id
      t.integer :client_id
      t.integer :b_user_id
      t.integer :place_id
      t.integer :reserve_num
      t.text :comment_1
      t.text :comment_2
      t.integer :desired_time
      t.text :misc
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
