class UsersController < ApplicationController

  def contact
    @user = User.create(user_info)
    ApplicationMailer.send_email(@user).deliver_now
  end

  private
  def user_info
    params.require(:user).permit(:name, :email,:about)
  end
end
