class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :title
      t.text :body
      t.integer :target_type
      t.integer :regist_user_id
      t.datetime :public_from
      t.datetime :public_to
      t.datetime :publick_date
      t.integer :status

      t.timestamps
    end
  end
end
