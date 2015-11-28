class CommentsController < ApplicationController

  include CommentableControllerConcern

  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_commentable, only: [:create]

  def new
    @comment = Comment.new(parent_id: comment_params[:parent_id] )
  end

  def edit
    @comment
  end

  def create
    
    @comment = @commentable.comments.create!(comment_params.merge(commenter_id: current_user.id))
    
    respond_to do |format|
      
      format.html { redirect_to root_url }
      format.js
    end
  end

  def update
    @comment.update(comment_params)
    respond_to do |format|
      format.html { redirect_to @comment.commentable }
      format.js
    end
  end

  def destroy
    @comment = Comment.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
    # @comment.destroy

    # respond_to do |format|
    #   format.html { redirect_to root_url }
    #   format.js
    # end
  end

  private  

    def set_comment
      @comment = Comment.find(params[:id])
    end
    
    def comment_params
      params.require(:comment).permit(:content, :parent_id)
    end
end
