##### Author: Daniel Sundström  #####
##### Date: July 13, 2011 - Jul:07:22#####
##### License: MIT License    #####
class PublicController < ApplicationController
  before_filter :authenticate, :only => [:secure]
  
  def secure
    
  end
  
  private
  
  def authenticate
    authenticate_or_request_with_http_digest("SuperSecret") do |username|
      'washington'
    end
  end
end
