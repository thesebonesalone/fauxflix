class MoviesController < ApplicationController
  before_action :current_user, :current_profile
  
def index
  @movies = Movie.all
  session[:return_to] = movies_path
end 

def show
  @movie = Movie.find(params[:id])
  session[:return_to] = movies_path(@movie)
end

def addtolist
  @movie = Movie.find(params[:id])
  @list = @current_profile.list
  nlm = @list.list_movies.new
  nlm.movie_id = @movie.id
  nlm.save
  redirect_to session.delete(:return_to)
end

def removefromlist
  @movie = Movie.find(params[:id])
  @list = @current_profile.list
  rlm = ListMovie.where(movie_id: @movie.id, list_id: @list.id)
  ListMovie.destroy(rlm[0].id)
  redirect_to session.delete(:return_to)
end

def addlike
  @movie = Movie.find(params[:id])
  @profile = @current_profile
  new_like = Like.new
  new_like.movie_id = @movie.id
  new_like.profile_id = @profile.id
  new_like.save
  redirect_to movie_path(@movie)
end

def removelike
  @movie = Movie.find(params[:id])
  @profile = @current_profile
  like = Like.where(movie_id: @movie.id, profile_id: @profile.id)[0]
  Like.destroy(like.id)
  redirect_to movie_path(@movie)
end



private

def current_user
  if !session[:user_id]
    return redirect_to "/"
  end
  @current_user ||= session[:user_id] && User.find_by("id = ?",session[:user_id])
end
def current_profile
  @current_profile ||= session[:profile_id] && Profile.find_by("id = ?",session[:profile_id])
end

end
