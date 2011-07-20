class PublicController < ApplicationController
  
  def index
    @link = rand(100000).to_s
    while Post.where(["title = ?", @link]).length > 0
      @link = rand(100000).to_s
    end      
  end
  
  def show
    @post = Post.find_or_create_by_title(params[:id])
  end
  
  def edit
    @post = Post.find_or_create_by_title(params[:id])    
  end
  
  def update
    @post = Post.find_or_create_by_title(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to public_path(@post.title) and return
    else
      redirect_to edit_public_path(@post.title) and return      
    end
  end
  
  def feed
    @post = Post.find_by_title(params[:public_id])    
  end

end
