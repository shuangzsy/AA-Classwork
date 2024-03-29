class SessionsController < ApplicationController
  before_action :require_logged_in, only:[:destroy]
  before_action :require_logged_out, only:[:new, :create]

  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )
    if @user
      login!(@user)
      redirect_to user_url(@user) 
    else
      flash[:errors] = ["Invalid email or password"]
      redirect_to new_session_url
    end
  end
  
  def destroy
    logout
    flash[:messages] = ["Successfully logged out!"]
    redirect_to new_session_url
  end

end
