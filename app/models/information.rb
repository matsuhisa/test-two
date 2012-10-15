class Information < ActiveRecord::Base
  attr_accessible :body, :public_from, :public_to, :publick_date, :regist_user_id, :status, :target_type, :title
end
