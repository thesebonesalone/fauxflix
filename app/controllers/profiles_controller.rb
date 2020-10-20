require 'byebug'

class ProfilesController < ApplicationController
  before_action :current_user, :current_profile
  
def show
  @profile = Profile.find(params[:id])
  session[:profile_id] = @profile.id
  @current_profile = @profile
  session[:return_to] = profile_path(@profile)
end

def new 
  @profile = Profile.new
end

def edit 
  @profile = Profile.find(params[:id])
end

def create
  @profile = Profile.new(profile_params) 
  if @profile.save
    list = List.new
    list.profile_id = @profile.id
    list.save
    flash[:notice] = "Profile was created successfully"
    redirect_to @profile
  else
    render 'new'
  end
end

def update
  @profile = Profile.find(params[:id])
  if @profile.update(profile_params)
    flash[:notice] = "Profile successfully updated"
    redirect_to @profile
  else
    render 'edit'
  end
end

def destroy
  @profile = Profile.find(params[:id])
  @profile.destroy 
  redirect_to user_path
end

private

def profile_params 
  params.require(:profile).permit(:name, :user_id)
end

def current_user
  @current_user ||= session[:user_id] && User.find_by("id = ?",session[:user_id])
end
def current_profile
  @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
end




end
