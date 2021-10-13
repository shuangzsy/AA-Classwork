class UsersController < ApplicationController
  before_action :require_logged_in, except: [:new, :create]
  before_action :require_logged_out, only: [:new, :create]

  def new
    @user = User.new
    render :new
  end

  def index 
    @users = User.all
    render :index
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user) #immediate login the user
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end


end
