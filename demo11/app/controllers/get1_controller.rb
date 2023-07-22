class Get1Controller < ActionController::Base
  def action1
    @user = "你好"
    render json: @user
  end
end