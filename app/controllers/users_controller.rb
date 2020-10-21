class UsersController < ApplicationController
  before_action :current_user, :current_profile
  
  def index 
    @users = User.all 
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    session[:profile_id] ||= @user.profiles[0]
    @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
    if @user.profiles.length == 0
      redirect_to new_profile_path
    end
  end

 
  def edit 
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome #{@user.username}! You have successfully logged in!"
      session[:user_id] = @user.id
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

  def current_user
    @current_user ||= session[:user_id] && User.find_by("id = ?",session[:user_id])
  end
  def current_profile
    @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
  end


end
