class UsersController < ApplicationController

  def index 
    @users = User.all 
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id]) 
  end

 
  def edit 
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome {#@user.username}! You have successfully logged in!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(sessions.username)
    @user = update(user_params)
    redirect_to @user
  end


  def destroy
    @user = User.find(sessions.username)
    @user.destroy 
    redirect_to logout_path
  end
  
  private 
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


end
