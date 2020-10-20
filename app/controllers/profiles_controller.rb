class ProfilesController < ApplicationController
before_action :current_user

def show
  @profile = Profile.find(params[:id])
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
    render  'edit'
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
  @current_user ||= session[:user_id] && User.find(session[:user_id])
end

end
