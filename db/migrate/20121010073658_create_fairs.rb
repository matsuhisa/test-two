class CreateFairs < ActiveRecord::Migration
  def change
    create_table :fairs do |t|
      t.integer :client_id
      t.integer :place_id
      t.integer :fair_grup_id
      t.string :name
      t.integer :term_from
      t.integer :term_to
      t.integer :weekday
      t.integer :public_flag
      t.integer :public_status
      t.integer :public_from
      t.integer :public_to
      t.integer :web_reserve
      t.integer :web_reserve_date
      t.integer :attachment_file_id
      t.integer :question
      t.integer :tasting
      t.integer :fitting
      t.integer :coordinate
      t.integer :tryon
      t.integer :etc
      t.integer :etc_1_title
      t.integer :etc_2_title
      t.integer :reserve
      t.text :reserve_txt
      t.integer :rate
      t.text :rate_txt
      t.text :plan_txt
      t.text :priv_txt
      t.integer :push
      t.integer :reg_date
      t.integer :mod_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
