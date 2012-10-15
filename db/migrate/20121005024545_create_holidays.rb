class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.integer :holi_date
      t.integer :reg_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
