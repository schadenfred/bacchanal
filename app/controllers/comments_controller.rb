class CommentsController < ApplicationController

  include CommentableAncestry

  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_commentable, only: [:create]

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create

    @comment = @commentable.comments.create!(comment_params.merge(commenter_id: current_user.id))
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
    # @comment = current_user.comments.create!(comment_params)
    # if @comment.save
    #   redirect_to @comment.commentable, notice: 'Comment was successfully created.'
    # else
    #   render :new
    # end
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  private  

    def set_comment
      @comment = Comment.find(params[:id])
    end
    
    def comment_params
      params.require(:comment).permit(:content, :parent_id)
    end
end
