class SessionsController < ApplicationController
  before_action :require_user!, except: [:new, :create]

  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      user_params[:email],
      user_params[:password]
    )

    if @user.nil?
      render :new
    else
      log_in_user!(@user)
      redirect_to user_url(@user)
    end
  end

  def destroy
    log_out_user!
    render :new
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
