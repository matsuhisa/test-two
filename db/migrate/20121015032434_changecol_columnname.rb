class ChangecolColumnname < ActiveRecord::Migration
  def up
    rename_column(:clients, :corpration_id, :corporation_id)
  end

  def down
  end
end
