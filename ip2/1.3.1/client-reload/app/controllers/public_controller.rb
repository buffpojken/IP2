##### Author: Daniel Sundström  #####
##### Date: July 13, 2011 - Jul:07:26#####
##### License: MIT License    #####
class PublicController < ApplicationController

  def index
    response.headers['Refresh'] = '5'
  end

end
