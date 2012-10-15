# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121015032434) do

  create_table "action_catalogs", :force => true do |t|
    t.integer  "action_user_id"
    t.integer  "client_id"
    t.integer  "b_user_id"
    t.integer  "place_id"
    t.text     "text"
    t.text     "misc"
    t.integer  "action_type"
    t.integer  "src_id"
    t.integer  "reply_status"
    t.integer  "reply_date"
    t.text     "reply_memo"
    t.integer  "terminal_type"
    t.integer  "reg_date"
    t.integer  "del_flg"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "action_fairs", :force => true do |t|
    t.integer  "fair_id"
    t.integer  "action_user_id"
    t.integer  "client_id"
    t.integer  "b_user_id"
    t.integer  "place_id"
    t.integer  "reserve_num"
    t.text     "comment_1"
    t.text     "comment_2"
    t.integer  "desired_time"
    t.text     "misc"
    t.integer  "action_type"
    t.integer  "src_id"
    t.integer  "reply_status"
    t.integer  "reply_date"
    t.text     "reply_memo"
    t.integer  "terminal_type"
    t.integer  "reg_date"
    t.integer  "del_flg"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "action_inquiries", :force => true do |t|
    t.integer  "action_user_id"
    t.integer  "client_id"
    t.integer  "b_user_id"
    t.integer  "place_id"
    t.text     "comment"
    t.text     "text"
    t.text     "misc"
    t.integer  "inquiry_type"
    t.integer  "action_type"
    t.integer  "src_id"
    t.integer  "reply_status"
    t.integer  "reply_date"
    t.text     "reply_memo"
    t.integer  "terminal_type"
    t.integer  "reg_date"
    t.integer  "del_flg"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "action_reserves", :force => true do |t|
    t.integer  "action_user_id"
    t.integer  "client_id"
    t.integer  "b_user_id"
    t.integer  "place_id"
    t.integer  "number"
    t.integer  "date1"
    t.integer  "date2"
    t.integer  "date3"
    t.string   "weekday"
    t.integer  "date_fix"
    t.text     "text"
    t.text     "detail"
    t.text     "etc"
    t.text     "misc"
    t.integer  "reserve_type"
    t.integer  "action_type"
    t.integer  "src_id"
    t.integer  "reply_status"
    t.integer  "reply_date"
    t.text     "reply_memo"
    t.integer  "terminal_type"
    t.integer  "reg_date"
    t.integer  "del_flg"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "action_users", :force => true do |t|
    t.integer  "group"
    t.integer  "user_id"
    t.string   "sub"
    t.integer  "action_type"
    t.integer  "action_id"
    t.string   "f_name"
    t.string   "l_name"
    t.string   "f_name_kana"
    t.string   "l_name_kana"
    t.string   "sex_type"
    t.string   "age"
    t.string   "f_name_p"
    t.string   "l_name_p"
    t.string   "f_name_kana_p"
    t.string   "l_name_kana_p"
    t.string   "zip_code"
    t.integer  "pref_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "tel"
    t.string   "email_account"
    t.string   "email_domain"
    t.string   "carrier"
    t.text     "staff_memo"
    t.string   "aff_code"
    t.string   "aff_data"
    t.string   "discrimination"
    t.text     "useragent"
    t.integer  "reg_date"
    t.integer  "del_flg"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.integer  "pref_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "attachment_files", :force => true do |t|
    t.integer  "status"
    t.integer  "reg_date"
    t.integer  "user_id"
    t.integer  "use_type"
    t.string   "file_name"
    t.integer  "image_width"
    t.integer  "image_height"
    t.integer  "cen_flg"
    t.integer  "cen_date"
    t.integer  "file_type"
    t.integer  "cen_staff_id"
    t.text     "memo"
    t.string   "content_type"
    t.string   "file_size"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "attachments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "attachment_file_id"
    t.string   "attachment_key"
    t.integer  "status"
    t.integer  "attachment_type"
    t.integer  "plan_id"
    t.integer  "place_id"
    t.integer  "parent_id"
    t.string   "parent_type"
    t.date     "photo_date"
    t.integer  "category_1_id"
    t.integer  "category_2_id"
    t.integer  "turn"
    t.integer  "mod_date"
    t.integer  "reg_date"
    t.integer  "rel_level"
    t.integer  "pv_num"
    t.integer  "del_flg"
    t.integer  "cen_flg"
    t.integer  "official_flg"
    t.text     "caption"
    t.integer  "priority"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "plan_album_id"
    t.integer  "place_album_id"
  end

  create_table "blocks", :force => true do |t|
    t.string   "name"
    t.string   "name_r"
    t.string   "pref_ids"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cases", :force => true do |t|
    t.integer  "client_id"
    t.integer  "place_id"
    t.integer  "sort_number"
    t.integer  "status"
    t.string   "name"
    t.integer  "attachment_file_id"
    t.integer  "plan_type"
    t.integer  "inv_num"
    t.integer  "prepare_type"
    t.integer  "wedding_date"
    t.text     "etc"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "clients", :force => true do |t|
    t.integer  "corporation_id"
    t.integer  "place_id"
    t.integer  "client_type"
    t.string   "name"
    t.string   "domain"
    t.integer  "kakin_type"
    t.integer  "plan_type"
    t.integer  "avail_inq"
    t.integer  "avail_rsv"
    t.integer  "avail_cata"
    t.integer  "avail_ppc"
    t.integer  "avail_url"
    t.integer  "avail_fair"
    t.integer  "tanka_kotei"
    t.integer  "tanka_inq"
    t.integer  "tanka_rsv"
    t.integer  "tanka_fair"
    t.integer  "tanka_cata"
    t.integer  "tanka_ppc"
    t.integer  "mmg1_flg"
    t.integer  "mmg2_flg"
    t.integer  "mmg3_flg"
    t.integer  "mmg4_flg"
    t.integer  "mmg5_flg"
    t.integer  "plan_basic_op1"
    t.integer  "plan_basic_op2"
    t.integer  "plan_basic_op3"
    t.integer  "plan_basic_op4"
    t.integer  "plan_basic_op5"
    t.integer  "plan_basic_op6"
    t.integer  "plan_basic_op7"
    t.integer  "plan_basic_op8"
    t.integer  "plan_basic_op9"
    t.integer  "plan_basic_op10"
    t.integer  "entry_date"
    t.integer  "start_date"
    t.integer  "end_date"
    t.integer  "con_month"
    t.integer  "ppc_sponsor_id"
    t.text     "sales_memo"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg",           :default => 0
    t.integer  "new_plan_type"
    t.integer  "mieruka_st"
    t.integer  "own_site_st"
    t.integer  "ohidori_pb_num"
    t.integer  "photo_pb_num"
    t.integer  "plan_pb_num"
    t.integer  "plan_reg_num"
    t.string   "charge_name"
    t.string   "other_charge_name"
    t.text     "plan_sales_memo"
    t.integer  "bill_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "corporations", :force => true do |t|
    t.string   "name"
    t.string   "department_name"
    t.string   "corp_l_name"
    t.string   "corp_f_name"
    t.integer  "admin_type"
    t.string   "tel"
    t.string   "zip_code"
    t.integer  "pref_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "bank_account"
    t.string   "bank_account1"
    t.string   "bank_account2"
    t.text     "sales_memo"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "fair_specs", :force => true do |t|
    t.integer  "fair_id"
    t.integer  "client_id"
    t.integer  "place_id"
    t.integer  "sort_number"
    t.integer  "fair_spec_type"
    t.integer  "st_hour"
    t.integer  "st_min"
    t.integer  "ed_hour"
    t.integer  "ed_min"
    t.integer  "reg_date"
    t.time     "term_from"
    t.time     "term_to"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "fairs", :force => true do |t|
    t.integer  "client_id"
    t.integer  "place_id"
    t.integer  "fair_grup_id"
    t.string   "name"
    t.integer  "term_from"
    t.integer  "term_to"
    t.integer  "weekday"
    t.integer  "public_flag"
    t.integer  "public_status"
    t.integer  "public_from"
    t.integer  "public_to"
    t.integer  "web_reserve"
    t.integer  "web_reserve_date"
    t.integer  "attachment_file_id"
    t.integer  "question"
    t.integer  "tasting"
    t.integer  "fitting"
    t.integer  "coordinate"
    t.integer  "tryon"
    t.integer  "etc"
    t.integer  "etc_1_title"
    t.integer  "etc_2_title"
    t.integer  "reserve"
    t.text     "reserve_txt"
    t.integer  "rate"
    t.text     "rate_txt"
    t.text     "plan_txt"
    t.text     "priv_txt"
    t.integer  "push"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "holidays", :force => true do |t|
    t.string   "name"
    t.integer  "holi_date"
    t.integer  "reg_date"
    t.integer  "del_flg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "image_categories", :force => true do |t|
    t.integer  "category_1"
    t.integer  "category_2"
    t.string   "name"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "information", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "target_type"
    t.integer  "regist_user_id"
    t.datetime "public_from"
    t.datetime "public_to"
    t.datetime "publick_date"
    t.integer  "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "place_ads", :force => true do |t|
    t.integer  "place_id"
    t.integer  "status"
    t.integer  "official_status"
    t.string   "catch"
    t.text     "description"
    t.text     "course"
    t.text     "free_space"
    t.integer  "plan_extra"
    t.string   "open_info"
    t.string   "holiday_info"
    t.integer  "pickup_spec1"
    t.integer  "pickup_spec2"
    t.integer  "pickup_spec3"
    t.integer  "pickup_spec4"
    t.integer  "pickup_spec5"
    t.string   "tel"
    t.string   "ppc_pc"
    t.string   "ppc_smartphone"
    t.integer  "ppc_status"
    t.text     "ppc_memo"
    t.text     "sub_course"
    t.string   "sub_open_info"
    t.string   "sub_holiday_info"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.integer  "staff_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "place_spec_masters", :force => true do |t|
    t.integer  "group"
    t.string   "name"
    t.integer  "priority"
    t.integer  "set_cnt"
    t.string   "spec_text_pc"
    t.string   "spec_text_smt"
    t.string   "sub_text_pc"
    t.string   "sub_text_smt"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "place_specs", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "place_spec_master_id"
    t.integer  "chk"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.integer  "place_id"
  end

  create_table "place_to_mweds", :force => true do |t|
    t.integer  "place_id"
    t.integer  "place_mwed_id"
    t.integer  "del_flg"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "staff_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "places", :force => true do |t|
    t.integer  "client_id"
    t.string   "name"
    t.string   "name_index"
    t.string   "reading_name"
    t.string   "reading_name2"
    t.string   "zip_code"
    t.string   "tel"
    t.string   "fax"
    t.integer  "pref_id"
    t.integer  "area_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.text     "url"
    t.integer  "place_type"
    t.integer  "wedd_church"
    t.integer  "wedd_shrine"
    t.integer  "wedd_public"
    t.integer  "wedd_temple"
    t.integer  "wedd_etc"
    t.integer  "attachment_place_id"
    t.float    "point_total"
    t.float    "point1"
    t.float    "point2"
    t.float    "point3"
    t.float    "point4"
    t.float    "point5"
    t.float    "point6"
    t.integer  "rev_cnt"
    t.integer  "pv_num"
    t.decimal  "x",                   :precision => 10, :scale => 0
    t.decimal  "y",                   :precision => 10, :scale => 0
    t.integer  "del_flg"
    t.string   "place_name_old"
    t.string   "reading_name_old"
    t.string   "reading_name2_old"
    t.string   "neigh_station1"
    t.string   "neigh_station2"
    t.string   "neigh_station3"
    t.text     "free_word"
    t.integer  "att_point"
    t.integer  "att_point_org"
    t.integer  "att_point_plus"
    t.integer  "att_point_advert"
    t.integer  "sub_pref_id"
    t.string   "sub_address1"
    t.string   "sub_address2"
    t.string   "sub_address3"
    t.string   "sub_neigh_station1"
    t.string   "sub_neigh_station2"
    t.string   "sub_neigh_station3"
    t.decimal  "sub_x",               :precision => 10, :scale => 0
    t.decimal  "sub_y",               :precision => 10, :scale => 0
    t.text     "sub_remark"
    t.string   "ppc_sponsor_id"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "staff_id"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "name_index_old"
  end

  create_table "plans", :force => true do |t|
    t.string   "name"
    t.integer  "plan_type"
    t.integer  "public_status"
    t.integer  "client_id"
    t.integer  "place_id"
    t.text     "cathc"
    t.text     "description"
    t.text     "remark"
    t.text     "app_period"
    t.text     "wedd_period"
    t.integer  "public_from"
    t.integer  "public_to"
    t.integer  "order_number"
    t.integer  "place_order_number"
    t.integer  "attachment_plan_id"
    t.text     "privilege_txt"
    t.integer  "base_price"
    t.integer  "min_count"
    t.integer  "max_count"
    t.integer  "recommend_count"
    t.integer  "unit_price"
    t.text     "count_etc_txt"
    t.integer  "wedding_inc"
    t.string   "wedding_txt"
    t.integer  "apparel_inc"
    t.string   "apparel_txt"
    t.integer  "accessory_inc"
    t.string   "accessory_txt"
    t.integer  "bouquet_inc"
    t.string   "bouquet_txt"
    t.integer  "hair_inc"
    t.string   "hair_txt"
    t.integer  "waiting_inc"
    t.string   "waiting_txt"
    t.integer  "guest_inc"
    t.string   "guest_txt"
    t.integer  "helper_inc"
    t.string   "helper_txt"
    t.integer  "photo_inc"
    t.string   "photo_txt"
    t.integer  "church_inc"
    t.string   "church_txt"
    t.integer  "singer_inc"
    t.string   "singer_txt"
    t.integer  "certificate_inc"
    t.string   "certificate_txt"
    t.integer  "food_inc"
    t.string   "food_txt"
    t.integer  "cake_inc"
    t.string   "cake_txt"
    t.integer  "present_inc"
    t.string   "present_txt"
    t.integer  "place_inc"
    t.string   "place_txt"
    t.integer  "sound_inc"
    t.string   "sound_txt"
    t.integer  "flower_inc"
    t.string   "flower_txt"
    t.integer  "print_inc"
    t.string   "print_txt"
    t.integer  "moderator_inc"
    t.string   "moderator_txt"
    t.integer  "photo_dvd_inc"
    t.string   "photo_dvd_txt"
    t.integer  "album_inc"
    t.string   "album_txt"
    t.integer  "phpto_cut_inc"
    t.string   "phpto_cut_txt"
    t.integer  "phpto_place_inc"
    t.string   "phpto_place_txt"
    t.integer  "phpto_apparel_inc"
    t.string   "phpto_apparel_txt"
    t.integer  "privilege_two_inc"
    t.string   "privilege_two_txt"
    t.integer  "accommodation_inc"
    t.text     "accommodation_txt"
    t.integer  "reg_date"
    t.integer  "mod_date"
    t.integer  "del_flg"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "prefs", :force => true do |t|
    t.string   "name"
    t.string   "name_r"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "block_id"
  end

  create_table "replies", :force => true do |t|
    t.integer  "place_id"
    t.integer  "review_id"
    t.text     "content"
    t.string   "staff_name"
    t.integer  "b_user_id"
    t.integer  "reply_st"
    t.integer  "post_date"
    t.integer  "charge_image_id"
    t.string   "charge_image_title"
    t.integer  "image_id1"
    t.string   "image_title1"
    t.integer  "image_id2"
    t.string   "image_title2"
    t.integer  "image_id3"
    t.string   "image_title3"
    t.string   "del_flg"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "review_users", :force => true do |t|
    t.integer "user_type",           :limit => 2,                   :null => false
    t.integer "reg_date",                                           :null => false
    t.integer "withdraw_date"
    t.integer "user_st",             :limit => 1,                   :null => false
    t.integer "serv_st",             :limit => 1,                   :null => false
    t.string  "sex_type",            :limit => 1
    t.date    "birthday",                                           :null => false
    t.integer "pref_id",             :limit => 1
    t.string  "nickname",            :limit => 30
    t.string  "company_name",        :limit => 100
    t.string  "department_name",     :limit => 100
    t.string  "corp_f_name",         :limit => 50
    t.string  "corp_l_name",         :limit => 50
    t.integer "image_id"
    t.string  "image_name",          :limit => 64
    t.integer "image_w",             :limit => 2
    t.integer "image_h",             :limit => 2
    t.string  "image_key",           :limit => 6
    t.text    "intro"
    t.integer "partner_id"
    t.integer "post_public",         :limit => 1,   :default => 0,  :null => false
    t.integer "favorite_num",                       :default => 0,  :null => false
    t.integer "point",                              :default => 0,  :null => false
    t.integer "tmp_point",                          :default => 0,  :null => false
    t.integer "mm_left",             :limit => 2,   :default => 0,  :null => false
    t.integer "new_ans",             :limit => 1,   :default => 0,  :null => false
    t.integer "new_rev_cmmt",        :limit => 1,   :default => 0,  :null => false
    t.string  "aff_code",            :limit => 30
    t.string  "aff_data",            :limit => 100
    t.integer "auth_expire"
    t.integer "easy_login_flg",      :limit => 1,   :default => 0,  :null => false
    t.integer "pc_mmgok_flg",        :limit => 1,                   :null => false
    t.integer "mb_mmgok_flg",        :limit => 1,                   :null => false
    t.string  "password",            :limit => 30
    t.string  "password_cd",         :limit => 10
    t.integer "mmdl_err_num",        :limit => 1,                   :null => false
    t.integer "errmail_num",         :limit => 1,                   :null => false
    t.integer "pc_email_st",         :limit => 1,   :default => -1, :null => false
    t.string  "pc_email_id",         :limit => 100
    t.string  "pc_email_domain"
    t.string  "pc_email_cd",         :limit => 10
    t.string  "tmp_pc_email_id",     :limit => 100
    t.string  "tmp_pc_email_domain"
    t.integer "mb_email_st",         :limit => 1,   :default => -1, :null => false
    t.string  "mb_email_id",         :limit => 100
    t.string  "mb_email_domain",     :limit => 30
    t.string  "tmp_mb_email_id",     :limit => 100
    t.string  "tmp_mb_email_domain", :limit => 30
    t.string  "mb_email_cd",         :limit => 10
    t.integer "address_auth_st",     :limit => 1,   :default => 0,  :null => false
    t.string  "model_name",          :limit => 20
    t.string  "carrier",             :limit => 1
    t.string  "user_code",           :limit => 10
    t.string  "subscr_id",           :limit => 40
    t.string  "serial_id",           :limit => 30
    t.text    "ope_cmmt"
    t.integer "main_terminal",       :limit => 1,   :default => 0,  :null => false
    t.integer "phone_auth_st",       :limit => 1,   :default => 0,  :null => false
  end

  add_index "review_users", ["aff_code"], :name => "user_data_i9"
  add_index "review_users", ["mb_email_id", "mb_email_domain"], :name => "user_data_i6"
  add_index "review_users", ["nickname"], :name => "user_data_i4"
  add_index "review_users", ["pc_email_id", "pc_email_domain"], :name => "user_data_i1"
  add_index "review_users", ["phone_auth_st"], :name => "user_data_i11"
  add_index "review_users", ["reg_date"], :name => "user_data_i10"
  add_index "review_users", ["serial_id"], :name => "user_data_i3", :unique => true
  add_index "review_users", ["subscr_id"], :name => "user_data_i2", :unique => true
  add_index "review_users", ["user_code"], :name => "user_data_i5", :unique => true

  create_table "reviews", :force => true do |t|
    t.integer "review_user_id"
    t.integer "review_type"
    t.integer "review_type_detail"
    t.integer "place_id",                                            :null => false
    t.integer "reg_date"
    t.date    "visit_date"
    t.float   "eval_total"
    t.text    "comment"
    t.integer "explicit_relationship", :limit => 1
    t.integer "comment_length"
    t.string  "advice",                :limit => 100
    t.integer "column_change_flg",     :limit => 1,   :default => 0, :null => false
    t.string  "image_cmmt1",           :limit => 50
    t.string  "image_cmmt2",           :limit => 50
    t.string  "image_cmmt3",           :limit => 50
    t.string  "image_cmmt4",           :limit => 50
    t.string  "image_cmmt5",           :limit => 50
    t.string  "image_cmmt6",           :limit => 50
    t.string  "image_cmmt7",           :limit => 50
    t.string  "image_cmmt8",           :limit => 50
    t.string  "image_cmmt9",           :limit => 50
    t.string  "image_cmmt10",          :limit => 50
    t.string  "image_cmmt11",          :limit => 50
    t.string  "image_cmmt12",          :limit => 50
    t.integer "image_id1"
    t.integer "image_id2"
    t.integer "image_id3"
    t.integer "image_id4"
    t.integer "image_id5"
    t.integer "image_id6"
    t.integer "image_id7"
    t.integer "image_id8"
    t.integer "image_id9"
    t.integer "image_id10"
    t.integer "image_id11"
    t.integer "image_id12"
    t.integer "useful_num",                           :default => 0, :null => false
    t.integer "useful_good_num",                      :default => 0, :null => false
    t.integer "total_num",                            :default => 0, :null => false
    t.integer "total_good_num",                       :default => 0, :null => false
    t.integer "pc_mail",               :limit => 1
    t.integer "mb_mail",               :limit => 1
    t.integer "point",                                :default => 0, :null => false
    t.integer "rank_st",               :limit => 1,   :default => 0, :null => false
    t.integer "pv_num",                               :default => 0, :null => false
    t.integer "mod_date"
    t.integer "update_cnt",                           :default => 0
    t.integer "del_flg",               :limit => 1,   :default => 0, :null => false
    t.integer "del_user_id"
    t.string  "discrimination",        :limit => 32
    t.integer "cen_flg",               :limit => 1,   :default => 0, :null => false
    t.integer "cen_date"
    t.integer "cen_staff_id"
    t.text    "cen_memo"
    t.integer "staged_flg",            :limit => 1,   :default => 0, :null => false
    t.integer "point_reason",          :limit => 1,   :default => 0, :null => false
    t.string  "trace_code",            :limit => 30
  end

  add_index "reviews", ["cen_date"], :name => "rev_data_i7"
  add_index "reviews", ["comment_length"], :name => "rev_data_i5"
  add_index "reviews", ["discrimination", "cen_flg", "del_flg"], :name => "rev_data_i6"
  add_index "reviews", ["id", "review_user_id", "place_id", "reg_date"], :name => "rev_data_i1"
  add_index "reviews", ["image_id1"], :name => "rev_data_i8"
  add_index "reviews", ["image_id10"], :name => "rev_data_i17"
  add_index "reviews", ["image_id11"], :name => "rev_data_i18"
  add_index "reviews", ["image_id12"], :name => "rev_data_i19"
  add_index "reviews", ["image_id2"], :name => "rev_data_i9"
  add_index "reviews", ["image_id3"], :name => "rev_data_i10"
  add_index "reviews", ["image_id4"], :name => "rev_data_i11"
  add_index "reviews", ["image_id5"], :name => "rev_data_i12"
  add_index "reviews", ["image_id6"], :name => "rev_data_i13"
  add_index "reviews", ["image_id7"], :name => "rev_data_i14"
  add_index "reviews", ["image_id8"], :name => "rev_data_i15"
  add_index "reviews", ["image_id9"], :name => "rev_data_i16"
  add_index "reviews", ["place_id"], :name => "rev_data_i2"
  add_index "reviews", ["reg_date"], :name => "rev_data_i4"
  add_index "reviews", ["review_user_id"], :name => "rev_data_i3"

end
