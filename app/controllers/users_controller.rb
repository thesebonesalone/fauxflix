class UsersController < ApplicationController
  before_action :current_user, :current_profile
  skip_before_action :current_profile, :only => [:show, :new, :create]
  skip_before_action :current_user, :only => [:new, :create]
  
  def index 
    @users = User.all 
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    if @user.profiles.length == 0
      return redirect_to new_profile_path
    end
    session[:profile_id] = Profile.find(@user.profiles[0].id).id
    @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
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
    @user = User.find(session[:user_id])
    if @user.update(user_params)
      flash[:notice] = "User successfully updated"
      redirect_to @user
    else
      flash[:error] = "E-mail must be in valid E-mail format"
      render 'edit'
    end
  end


  def destroy
    @user = User.find(session[:user_id])
    @user.destroy 
    redirect_to logout_path
  end
  
  private 
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def current_user
    if !session[:user_id]
      return redirect_to "/"
    end
    @current_user ||= session[:user_id] && User.find_by("id = ?",session[:user_id])
    
  end
  def current_profile
    #byebug
    @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
  end


end
