# encoding: utf-8
class Corporation < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :admin_type, :bank_account, :bank_account1, :bank_account2, :corp_f_name, :corp_l_name, :del_flg, :department_name, :mod_date, :name, :pref_id, :reg_date, :sales_memo, :tel, :zip_code

  scope :newer, order('reg_date DESC')

  has_many :clients, :conditions => ('del_flg = 0')

  def admin_type_name
      if self.admin_type == 1
        return "直営"
      elsif self.admin_type == 2 then
        return "デスク運営"
      elsif self.admin_type == 3 then
        return "代理店"
      else
        return '-'
      end
  end

  def pref_name
    pref = Pref.find_by_id(self.pref_id)
    if pref
      return pref.name
    else
      return ''
    end
  end

  def address
    address = self.pref_name() + address1 + address2 + address3
    return address
  end

  def reg_datetime
    reg_datetime = Time.at(self.reg_date)
    return reg_datetime
  end

end
