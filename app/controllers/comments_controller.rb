class CommentsController < ApplicationController
  def create
    @comment = Comment.new params[:comment]
    if @comment.save
      redirect_to 
    else
    end
  end
end
