class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :authenticate_user!

  # ログイン後の遷移
  def after_sign_in_path_for(resources)
    if user_signed_in?
      if resources.login_type == 'operation'
        # 審査画面
        operation_root_path
      elsif resources.login_type == 'business'
        # 式場管理画面
        business_root_path
      else
        root_path
      end
    else
      root
    end
  end

end
