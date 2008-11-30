class PostsController < ApplicationController
  
  def index
    list
    render :action => :list
  end
  
  def list
    @posts = Post.find(:all, :order => 'date desc')    
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new params[:post]
    if @post.save
      redirect_to posts_path
    else
      render :action => :new
    end
  end
  
  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to posts_path
  end
  
  def edit
    @post = Post.find params[:id]
  end
  
  def update
    @post = Post.find params[:id]
    if @post.update_attributes(params[:post])
      redirect_to posts_path
    else
      render :action => :edit, :id => params[:id]
    end
  end
  
  def show
    @post = Post.find params[:id]
    @comment = Comment.new
  end
end
