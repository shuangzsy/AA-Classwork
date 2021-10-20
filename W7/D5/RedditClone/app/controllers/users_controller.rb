class UsersController < ApplicationController
  before_action :require_logged_in, except:[:new, :create]

  def index 
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user
      login(@user)
      redirect_to users_url
    else
      flash.now[:errors] = ["Invalid username or password!"]
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["Invalid username or password!"]
      render :edit
    end
  end 

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end
  
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
