class TagsController < ApplicationController
    before_action :current_user, :current_profile

    def index
        @tags = Tag.all
    end
    def show
        @tag = Tag.find(params[:id])
        session[:return_to] = tag_path(@tag)
    end


    private

    def current_user
        @current_user ||= session[:user_id] && User.find_by("id = ?",session[:user_id])
    end
    def current_profile
        @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
    end

end
