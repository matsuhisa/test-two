class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :name
      t.string :name_r
      t.string :pref_ids

      t.timestamps
    end
  end
end
