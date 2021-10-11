class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_url(@user.id)
    else
      render json: user.errors.full_messages, status: 422 #unprocessable entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :password_digest, :session_token)
  end

end
