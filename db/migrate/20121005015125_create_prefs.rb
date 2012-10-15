class CreatePrefs < ActiveRecord::Migration
  def change
    create_table :prefs do |t|
      t.string :name
      t.string :name_r

      t.timestamps
    end
  end
end
