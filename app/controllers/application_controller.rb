class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :authenticate_user!

  # ƒƒOƒCƒ“Œã‚Ì‘JˆÚ
  def after_sign_in_path_for(resources)
    if user_signed_in?
      if resources.login_type == 'operation'
        # R¸‰æ–Ê
        operation_root_path
      elsif resources.login_type == 'business'
        # Ž®êŠÇ—‰æ–Ê
        business_root_path
      else
        root_path
      end
    else
      root
    end
  end

end
