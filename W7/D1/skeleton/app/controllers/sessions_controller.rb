class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
    if @user
      redirect_to cats_url
    else
      render json: ["invalid username or password"]
    end
  end

  def destroy
    
    redirect_to new_session_url
  end
end
