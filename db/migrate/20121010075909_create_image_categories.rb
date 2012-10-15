class CreateImageCategories < ActiveRecord::Migration
  def change
    create_table :image_categories do |t|
      t.integer :category_1
      t.integer :category_2
      t.string :name
      t.integer :reg_date
      t.integer :mod_date
      t.integer :del_flg

      t.timestamps
    end
  end
end
