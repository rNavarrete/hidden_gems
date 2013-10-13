class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = Users.new
  end

  def create
  	@user = Users.create(user_params)
  end	

  private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_name)
  end
end
