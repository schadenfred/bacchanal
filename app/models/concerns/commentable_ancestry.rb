module CommentableAncestry
  extend ActiveSupport::Concern
 
  included do
    before_action :set_commentable, only: [:create]
  end
  
  def get_referer_path
    uri = URI(request.referer)
    uri.path

  end 

  def commentable_resource(path)
    byebug

  end

  def commentable_resource_child 

  end
  # def comments
  #   @commentable = find_commentable
  #   @comments = @commentable.comments.arrange(:order => :created_at)
  #   @comment = Comment.new
  # end
 
  private
  
  def set_commentable
    
    get_referer_path
    # @commentable = 
    # return params[:controller].singularize.classify.constantize.find(params[:id])
  end
end
