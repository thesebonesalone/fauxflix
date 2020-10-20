class ApplicationController < ActionController::Base
    before_action :current_user, :current_profile

    def current_user
        @current_user ||= session[:user_id] && User.find_by("id = ?",session[:user_id])
    end
    def current_profile
        @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
    end
end
