# encoding: utf-8
class Case < ActiveRecord::Base
  attr_accessible :attachment_file_id, :client_id, :del_flg, :etc, :inv_num, :mod_date, :name, :place_id, :plan_type, :prepare_type, :reg_date, :sort_number, :status, :wedding_date


  scope :newer, order('sort_number')

  def prepare_type_name 
    prepare_type_names = Constants.case_prepare_type_names

    if prepare_type_names[self.prepare_type]
      return prepare_type_names[self.prepare_type]
    end
  end

  def plan_type_name 
    plan_type_names = Constants.case_plan_type_names

    if plan_type_names[self.plan_type]
      return plan_type_names[self.plan_type]
    elsif self.plan_type == 99
      return 'その他'
    end
  end

  def wedding_datetime
    if self.wedding_date
      wedding_datetime = Time.at(self.wedding_date)
      return wedding_datetime
    end
  end
end
