class CommentsController < ApplicationController
  def create
    @comment = Comment.new params[:comment]
    @post = Post.find params[:post_id]
    
    if @current_user
      @comment.name = nil
      @comment.user = @current_user
    end
    
    @comment.post = @post
    if @comment.save
      flash[:notice] = 'Комментарий успешно добавлен!'
    else
      flash[:error] = 'Возникла ошибка при добавлении комментария. Попробуйте еще раз.'
    end
    redirect_to post_path(@post)
  end
  
  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    @post = Post.find params[:post_id]
    redirect_to post_path(@post)
  end
end
