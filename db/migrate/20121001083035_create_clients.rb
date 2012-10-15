class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :corpration_id
      t.integer :place_id
      t.integer :client_type
      t.string :name
      t.string :domain
      t.integer :kakin_type
      t.integer :plan_type
      t.integer :avail_inq
      t.integer :avail_rsv
      t.integer :avail_cata
      t.integer :avail_ppc
      t.integer :avail_url
      t.integer :avail_fair
      t.integer :tanka_kotei
      t.integer :tanka_inq
      t.integer :tanka_rsv
      t.integer :tanka_fair
      t.integer :tanka_cata
      t.integer :tanka_ppc
      t.integer :mmg1_flg
      t.integer :mmg2_flg
      t.integer :mmg3_flg
      t.integer :mmg4_flg
      t.integer :mmg5_flg
      t.integer :plan_basic_op1
      t.integer :plan_basic_op2
      t.integer :plan_basic_op3
      t.integer :plan_basic_op4
      t.integer :plan_basic_op5
      t.integer :plan_basic_op6
      t.integer :plan_basic_op7
      t.integer :plan_basic_op8
      t.integer :plan_basic_op9
      t.integer :plan_basic_op10
      t.integer :entry_date
      t.integer :start_date
      t.integer :end_date
      t.integer :con_month
      t.integer :ppc_sponsor_id
      t.text :sales_memo
      t.integer :reg_date
      t.integer :mod_date
      t.integer :del_flg, :default=>0
      t.integer :new_plan_type
      t.integer :mieruka_st
      t.integer :own_site_st
      t.integer :ohidori_pb_num
      t.integer :photo_pb_num
      t.integer :plan_pb_num
      t.integer :plan_reg_num
      t.string :charge_name
      t.string :other_charge_name
      t.text :plan_sales_memo
      t.integer :bill_id

      t.timestamps
    end
  end
end
