class PlaceSpecMaster < ActiveRecord::Base
  attr_accessible :del_flg, :group, :mod_date, :name, :priority, :reg_date, :set_cnt, :spec_text_pc, :spec_text_smt, :sub_text_pc, :sub_text_smt

  scope :business_edit, where('id <= 20 ')

end
