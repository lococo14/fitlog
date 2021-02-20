class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
       @comment.save
       redirect_to log_path(@comment.log)
    else
      @log = @comment.log
      @comments = @log.comments
      render template: "logs/show"
    end
  end
   
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def destroy
    @log = Log.find(params[:log_id])
    @comment = Comment.find(params[:]
    redirect_to log_path(@comment.log) if current_user.id == @comment.user_id && @comment.destroy
  end  
  

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, log_id: params[:log_id])
  end
end
