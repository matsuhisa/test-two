class Operation::HomeController < OperationController
  def index
    @user = User.all
  end
end
