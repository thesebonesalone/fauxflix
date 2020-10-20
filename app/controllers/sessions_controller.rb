class SessionsController < ApplicationController
  before_action :current_user, :current_profile
  def new
  end


def create
  user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id 
      flash[:notice] = "Logged in Successfully"
      redirect_to users_path(user) 
    else
      flash.now[:alert] = "There was something wrong with your login details"
      render 'new'
    end
end

def destroy
    session[:user_id] = nil 
    session[:profile_id] = nil
    flash[:notice] = "logged out"
    redirect_to root_path
end 


end
