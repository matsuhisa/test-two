class BusinessController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!, :login_affter_initialize

  # ƒƒOƒCƒ“Œã‚Ìˆ—
  # - place‚ðŽæ“¾
  # - ’è”
  def login_affter_initialize
    @constans = Constants
    if current_user
      @place = current_user.place
      if current_user.login_type != 'business'
        redirect_to root_path
      end
    end
  end

end
