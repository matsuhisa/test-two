# encoding: utf-8
class Corporation < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :admin_type, :bank_account, :bank_account1, :bank_account2, :corp_f_name, :corp_l_name, :del_flg, :department_name, :mod_date, :name, :pref_id, :reg_date, :sales_memo, :tel, :zip_code

  scope :newer, order('reg_date DESC')

	scope :like_name, lambda {|q| 
    where('name like :q', :q => "%#{q}%")
  }

  scope :search_admin_type, lambda {|q|
    if q.present?
      where(:admin_type=>q) 
    end
  }

  scope :search_pref_id, lambda {|q|
    if q.present?
      where(:pref_id=>q) 
    end
  }

  has_many :clients, :conditions => ('del_flg = 0')

  has_many :users

  def admin_type_name
    #Constants.login_type_names
    admin_type_names = Constants.corporation_admin_type_names
    return admin_type_names[self.admin_type]
=begin
      if self.admin_type == 1
        #puts Constants.corporation_admin_type_names
        #return Constants.corporation_admin_type_names
        admin_type_names = Constants.corporation_admin_type_names
        return admin_type_names[self.admin_type]
      elsif self.admin_type == 2 then
        return "デスク運営"
      elsif self.admin_type == 3 then
        return "代理店"
      else
        return '-'
      end
=end
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
