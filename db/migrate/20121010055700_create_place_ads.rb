class CreatePlaceAds < ActiveRecord::Migration
  def change
    create_table :place_ads do |t|
      t.integer :place_id
      t.integer :status
      t.integer :official_status
      t.string :catch
      t.text :description
      t.text :course
      t.text :free_space
      t.integer :plan_extra
      t.string :open_info
      t.string :holiday_info
      t.integer :pickup_spec1
      t.integer :pickup_spec2
      t.integer :pickup_spec3
      t.integer :pickup_spec4
      t.integer :pickup_spec5
      t.string :tel
      t.string :ppc_pc
      t.string :ppc_smartphone
      t.integer :ppc_status
      t.text :ppc_memo
      t.text :sub_course
      t.string :sub_open_info
      t.string :sub_holiday_info
      t.integer :reg_date
      t.integer :mod_date
      t.integer :del_flg
      t.integer :staff_id

      t.timestamps
    end
  end
end
