class CreateActionCatalogs < ActiveRecord::Migration
  def change
    create_table :action_catalogs do |t|
      t.integer :action_user_id
      t.integer :client_id
      t.integer :b_user_id
      t.integer :place_id
      t.text :text
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
