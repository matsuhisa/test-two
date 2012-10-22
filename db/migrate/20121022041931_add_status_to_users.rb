class AddStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :corporation_id, :integer
    add_column :users, :client_id, :integer
    add_column :users, :user_type, :string
    add_column :users, :status, :string
  end
end
