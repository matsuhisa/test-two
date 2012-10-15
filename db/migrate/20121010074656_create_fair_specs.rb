class CreateFairSpecs < ActiveRecord::Migration
  def change
    create_table :fair_specs do |t|
      t.integer :fair_id
      t.integer :client_id
      t.integer :place_id
      t.integer :sort_number
      t.integer :type
      t.integer :st_hour
      t.integer :st_min
      t.integer :ed_hour
      t.integer :ed_min
      t.integer :reg_date
      t.time :term_from
      t.time :term_to

      t.timestamps
    end
  end
end
