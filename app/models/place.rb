class Place < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :area_id, :att_point, :att_point_advert, :att_point_org, :att_point_plus, :attachment_place_id, :client_id, :del_flg, :fax, :free_word, :mod_date, :name, :name_index, :neigh_station1, :neigh_station2, :neigh_station3, :place_name_old, :place_type, :point1, :point2, :point3, :point4, :point5, :point6, :point_total, :ppc_sponsor_id, :pref_id, :pv_num, :reading_name, :reading_name2, :reading_name2_old, :reading_name_old, :reg_date, :rev_cnt, :staff_id, :sub_address1, :sub_address2, :sub_address3, :sub_neigh_station1, :sub_neigh_station2, :sub_neigh_station3, :sub_pref_id, :sub_remark, :sub_x, :sub_y, :tel, :url, :wedd_church, :wedd_etc, :wedd_public, :wedd_shrine, :wedd_temple, :x, :y, :zip_code

  scope :live, where('del_flg = 0')

  has_one  :place_ad
  belongs_to  :client, :conditions => ('del_flg = 0')
  has_many :place_specs
  has_many :images, :class_name=>'Attachment', :conditions => ('del_flg = 0'), :order => ('priority')

  def reg_datetime
    reg_datetime = Time.at(self.reg_date)
    return reg_datetime
  end

  def mod_datetime
    reg_datetime = Time.at(self.mod_date)
    return reg_datetime
  end
end
