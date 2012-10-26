class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :authenticate_user!

  # ���O�C����̑J��
  def after_sign_in_path_for(resources)
    if user_signed_in?
      if resources.login_type == 'operation'
        # �R�����
        operation_root_path
      elsif resources.login_type == 'business'
        # ����Ǘ����
        business_root_path
      else
        root_path
      end
    else
      root
    end
  end

end
