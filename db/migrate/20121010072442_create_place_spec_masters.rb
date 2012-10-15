class CreatePlaceSpecMasters < ActiveRecord::Migration
  def change
    create_table :place_spec_masters do |t|
      t.integer :group
      t.string :name
      t.integer :priority
      t.integer :set_cnt
      t.string :spec_text_pc
      t.string :spec_text_smt
      t.string :sub_text_pc
      t.string :sub_text_smt
      t.integer :reg_date
      t.integer :mod_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
