# encoding: utf-8
class Place < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :area_id, :att_point, :att_point_advert, :att_point_org, :att_point_plus, :attachment_place_id, :client_id, :del_flg, :fax, :free_word, :mod_date, :name, :name_index, :neigh_station1, :neigh_station2, :neigh_station3, :place_name_old, :place_type, :point1, :point2, :point3, :point4, :point5, :point6, :point_total, :ppc_sponsor_id, :pref_id, :pv_num, :reading_name, :reading_name2, :reading_name2_old, :reading_name_old, :reg_date, :rev_cnt, :staff_id, :sub_address1, :sub_address2, :sub_address3, :sub_neigh_station1, :sub_neigh_station2, :sub_neigh_station3, :sub_pref_id, :sub_remark, :sub_x, :sub_y, :tel, :url, :wedd_church, :wedd_etc, :wedd_public, :wedd_shrine, :wedd_temple, :x, :y, :zip_code

  scope :live, where('del_flg = 0')

  scope :public, joins(:place_ad).merge(PlaceAd.live)

	scope :like_name, lambda {|q| 
    where('name like :q', :q => "%#{q}%")
  }

  scope :search_place_id, lambda {|q|
    if q.present?
      where(:id=>q) 
    end
  }

  scope :search_pref_id, lambda {|q|
    if q.present?
      where(:pref_id=>q) 
    end
  }

  # ---------- 

  has_one  :place_ad
  belongs_to  :pref
  belongs_to  :area
  belongs_to  :client, :conditions => ('del_flg = 0')
  has_many :place_specs
  has_many :images, :class_name=>'Attachment', :conditions => ('del_flg = 0'), :order => ('priority')

  # ---------- 

  def pref_name
    pref = Pref.find_by_id(self.pref_id)
    if pref
      return pref.name
    else
      return ''
    end
  end

  def sub_pref_name
    pref = Pref.find_by_id(self.sub_pref_id)
    if pref
      return pref.name
    else
      return ''
    end
  end

  def block
    if pref
      return Block.find_by_id(self.pref.block_id)
    end
  end

  # 式場タイプ名
  def place_type_name
    place_type_names = {
      1 => '総合結婚式場',
      2 => 'ホテル',
      3 => 'レストラン',
      4 => 'ハウス',
      5 => '教会',
      6 => '神社仏閣',
      99 => 'その他',
    }
    return place_type_names[self.place_type]
  end

  # 挙式スタイル名
  def style_type_name
    style_names = []
    if self.wedd_church_name()
      style_names << self.wedd_church_name()
    end
    if self.wedd_shrine_name()
      style_names << self.wedd_shrine_name()
    end
    if self.wedd_public_name()
      style_names << self.wedd_public_name()
    end
    if self.wedd_temple_name()
      style_names << self.wedd_temple_name()
    end

    return style_names
  end

  def wedd_church_name
    if wedd_church == 1
      return "教会挙式"
    end
  end
  
  def wedd_shrine_name
    if wedd_shrine == 1
      return "神前挙式"
    end
  end
  
  def wedd_public_name
    if wedd_public == 1
      return "人前挙式"
    end
  end
  
  def wedd_temple_name
    if wedd_temple == 1
      return "仏前挙式"
    end
  end


  # 式場住所
  def address
    address = self.pref_name() + address1 + address2 + address3
    return address
  end

  # 受付住所
  def sub_address
    if self.sub_pref_id
    address = self.sub_pref_name() + sub_address1 + sub_address2 + sub_address3
    return address
    end
  end

  # 昔の式場名を含む
  def full_name
    if self.place_name_old != ''
      return self.name + '（' + self.place_name_old + '）'
    else
      return self.name
    end
  end

  # 最寄駅（式場住所）
  def station
      stations = []
      if neigh_station1 != ''
        stations << neigh_station1
      end
      if neigh_station2 != ''
        stations << neigh_station2
      end
      if neigh_station3 != ''
        stations << neigh_station3
      end

      return stations
  end

  # 最寄駅（式場住所）
  def sub_station
      stations = []
      if sub_neigh_station1
        stations << sub_neigh_station1
      end
      if sub_neigh_station2
        stations << sub_neigh_station2
      end
      if sub_neigh_station3
        stations << sub_neigh_station3
      end

      return stations
  end

  def reg_datetime
    reg_datetime = Time.at(self.reg_date)
    return reg_datetime
  end

  def mod_datetime
    reg_datetime = Time.at(self.mod_date)
    return reg_datetime
  end

  # ---------- 
  def catch
    if self.place_ad
      return self.place_ad.catch
    end
  end

  def open_info
    if self.place_ad
      return self.place_ad.open_info
    end
  end

  def holiday_info
    if self.place_ad
      return self.place_ad.holiday_info
    end
  end

end
