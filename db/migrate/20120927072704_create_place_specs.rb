class CreatePlaceSpecs < ActiveRecord::Migration
  def change
    create_table :place_specs do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
