##### Author: Daniel Sundström  #####
##### Date: July 13, 2011 - Jul:07:30 #####
##### License: MIT License    #####
require 'quick_magick'
class PublicController < ApplicationController

  def index;end
  
  def time
    path =  File.join(Rails.root, 'tmp', 'time.jpg')
    i = QuickMagick::Image::solid(350, 30, :white)
    i.draw_text(30, 30, Time.now.to_i)
    i.save path
    send_file path
  end

end
