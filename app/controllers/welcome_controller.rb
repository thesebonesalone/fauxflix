class WelcomeController < ApplicationController
  
  def home
    session[:return_to] ||= "/"

    Movie.all.each do |movie|
      if movie.img == nil
        @info = TmdbApi.new(movie.title).build_info
        movie.update(description: @info[:description], img: @info[:image], backdrop: @info[:backdrop])
      end
    end
  end

  def testbg

  end
  
end
