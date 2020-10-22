class WelcomeController < ApplicationController
  
  def home
    session[:return_to] ||= "/"
  end

  def testbg

  end
  
end
