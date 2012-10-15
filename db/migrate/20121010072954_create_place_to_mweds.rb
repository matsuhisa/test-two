class CreatePlaceToMweds < ActiveRecord::Migration
  def change
    create_table :place_to_mweds do |t|
      t.integer :id
      t.integer :place_id
      t.integer :place_mwed_id
      t.integer :del_flg
      t.integer :reg_date
      t.integer :mod_date
      t.integer :staff_id

      t.timestamps
    end
  end
end
