class AddNameIndexOldToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :name_index_old, :string
  end
end
