class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :client_id
      t.integer :place_id
      t.integer :sort_number
      t.integer :status
      t.string :name
      t.integer :attachment_file_id
      t.integer :plan_type
      t.integer :inv_num
      t.integer :prepare_type
      t.integer :wedding_date
      t.text :etc
      t.integer :reg_date
      t.integer :mod_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
