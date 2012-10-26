# encoding: utf-8
class Client < ActiveRecord::Base
  attr_accessible :avail_cata, :avail_fair, :avail_inq, :avail_ppc, :avail_rsv, :avail_url, :bill_id, :charge_name, :client_type, :con_month, :corpration_id, :del_flg, :domain, :end_date, :entry_date, :kakin_type, :mieruka_st, :mmg1_flg, :mmg2_flg, :mmg3_flg, :mmg4_flg, :mmg5_flg, :mod_date, :name, :new_plan_type, :ohidori_pb_num, :other_charge_name, :own_site_st, :photo_pb_num, :place_id, :plan_basic_op1, :plan_basic_op10, :plan_basic_op2, :plan_basic_op3, :plan_basic_op4, :plan_basic_op5, :plan_basic_op6, :plan_basic_op7, :plan_basic_op8, :plan_basic_op9, :plan_pb_num, :plan_reg_num, :plan_sales_memo, :plan_type, :ppc_sponsor_id, :reg_date, :sales_memo, :start_date, :tanka_cata, :tanka_fair, :tanka_inq, :tanka_kotei, :tanka_ppc, :tanka_rsv


  belongs_to :corporation, :conditions => ('del_flg = 0')

  has_one :place, :conditions => ('del_flg = 0')

  has_many :users

  def client_type_name
    client_type_names = {
      100 => 'サービス:式場',
      201 => 'サービス:プロデュース',
      202 => 'サービス:エージェント',
      203 => 'サービス:フォトウェディング',
      204 => 'サービス:ジュエリー',
      205 => 'サービス:ドレス',
      206 => 'サービス:エステ',
      207 => 'サービス:ウェディングアイテム',
      301 => 'サービス:ふたりのウェディング',
      401 => 'サービス:B案件'
    }

    return client_type_names[self.client_type]
  end

  def avail_inq_name
    if self.avail_inq == 1
      return '有効'
    else
      return '無効'
    end
  end

  def avail_rsv_name
    if self.avail_rsv == 1
      return '有効'
    else
      return '無効'
    end
  end

  def avail_cata_name
    if self.avail_cata == 1
      return '有効'
    else
      return '無効'
    end
  end

  def avail_fair_name
    if self.avail_fair == 1
      return '有効'
    else
      return '無効'
    end
  end

  def reg_datetime
    reg_datetime = Time.at(self.reg_date)
    return reg_datetime
  end

end
