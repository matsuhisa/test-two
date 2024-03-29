class BusinessController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!, :login_affter_initialize

  # ログイン後の処理
  # - placeを取得
  # - 定数
  def login_affter_initialize
    @constans = Constants
    if current_user
      if current_user.login_type != 'business'
        redirect_to root_path
      else
        @place = current_user.place
      end
    end
  end

end
