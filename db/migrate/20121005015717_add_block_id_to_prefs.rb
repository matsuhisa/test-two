class AddBlockIdToPrefs < ActiveRecord::Migration
  def change
    add_column :prefs, :block_id, :integer
  end
end
