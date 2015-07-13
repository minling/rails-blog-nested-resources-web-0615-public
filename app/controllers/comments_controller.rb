class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    @comment.post_id = params[:post_id]
    # redirect_to "/posts/#{params[:post_id]}"
    redirect_to post_path(params[:post_id])
  end

private
  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end
end
