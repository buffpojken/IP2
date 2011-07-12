##### Author: Daniel Sundström  #####
##### Date: July 13, 2011 - Jul:07:53#####
##### License: MIT License    #####
class PublicController < ApplicationController

  def index
    if request.post? 
      session[:user_string] = params[:userstring]
    end
  end
  
  def proceed;end

end
