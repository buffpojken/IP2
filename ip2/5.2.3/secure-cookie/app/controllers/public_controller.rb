##### Author: Daniel Sundström  #####
##### Date: July 13, 2011 - Jul:07:42#####
##### License: MIT License    #####
class PublicController < ApplicationController

  def index
    cookies[:value1] = {
      :value => "ninja", 
      :expires => 3.hours.from_now, 
      :secure => true
    }

    cookies[:value2] = {
      :value => "samurai", 
      :expires => 3.hours.from_now, 
      :secure => true
    }
  end
  
end

