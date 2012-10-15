class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :client_id
      t.string :name
      t.string :name_index
      t.string :reading_name
      t.string :reading_name2
      t.string :zip_code
      t.string :tel
      t.string :fax
      t.integer :pref_id
      t.integer :area_id
      t.string :address1
      t.string :address2
      t.string :address3
      t.text :url
      t.integer :place_type
      t.integer :wedd_church
      t.integer :wedd_shrine
      t.integer :wedd_public
      t.integer :wedd_temple
      t.integer :wedd_etc
      t.integer :attachment_place_id
      t.float :point_total
      t.float :point1
      t.float :point2
      t.float :point3
      t.float :point4
      t.float :point5
      t.float :point6
      t.integer :rev_cnt
      t.integer :pv_num
      t.decimal :x
      t.decimal :y
      t.integer :del_flg
      t.string :place_name_old
      t.string :reading_name_old
      t.string :reading_name2_old
      t.string :neigh_station1
      t.string :neigh_station2
      t.string :neigh_station3
      t.text :free_word
      t.integer :att_point
      t.integer :att_point_org
      t.integer :att_point_plus
      t.integer :att_point_advert
      t.integer :sub_pref_id
      t.string :sub_address1
      t.string :sub_address2
      t.string :sub_address3
      t.string :sub_neigh_station1
      t.string :sub_neigh_station2
      t.string :sub_neigh_station3
      t.decimal :sub_x
      t.decimal :sub_y
      t.text :sub_remark
      t.string :ppc_sponsor_id
      t.integer :reg_date
      t.integer :mod_date
      t.integer :staff_id

      t.timestamps
    end
  end
end
