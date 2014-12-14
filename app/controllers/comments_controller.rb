class CommentsController < ApplicationController
  #before_action :signed_in_user
  before_action :correct_user, only: :destroy

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      flash[:success] = "Comment created!"
      redirect_to root_url #TODO
    end
  end

  def destroy
    @comment.destroy
    flash[:success] = "Comment deleted!"
    redirect_to word_url #TODO
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :word_id)
  end

  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    redirect_to root_url if @comment.nil?
  end
end