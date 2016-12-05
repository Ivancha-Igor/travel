class CommentsController < ApplicationController

  def new
    @placement = Placement.find(params[:placement_id])
    @comment = Comment.new
  end

  def create
    @placement = Placement.find(params[:placement_id])
    @comment = @placement.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:success] = "Created new comment!"
      redirect_to placement_path(@placement)
    else
      flash[:danger] = "Comment's body can't be empty!"
      redirect_to placement_path(@placement)
    end
  end

  def destroy
    @placement = Placement.find(params[:placement_id])
    @comment = @placement.comments.find(params[:id])
    if @comment.user == current_user
      flash[:success] = "Comment was deleted!"
      @comment.destroy
    else
      flash[:alert] = "You aren't owner of this comment!"
      redirect_to :back
      return
    end
    redirect_to placement_path(@placement)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :photo)
    end
end
