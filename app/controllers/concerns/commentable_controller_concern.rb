module CommentableControllerConcern

  extend ActiveSupport::Concern
 
  included do
    before_action :set_commentable, only: [:create]
  end
  
  def parsed_path
    uri = URI(request.referer)
    array = uri.path.split("/")
    array.shift
    return array
  end 

  def resource(path)
    resource_klass = parsed_path.first
    resource_id = parsed_path.second
    resource_klass.classify.constantize.friendly.find(resource_id)
  end

  def resource_child(path) 
    resource_klass = parsed_path.first
    resource_id = parsed_path.second
    resource_klass.classify.constantize.friendly.find(resource_id)
    parent = resource(path)
    child_resource_klass = parsed_path.third
    child_resource_id = parsed_path.fourth
    child_resource_klass.classify.constantize.where(
      org_id: parent.id, 
      slug: child_resource_id).first
  end
 
  private
  
  def set_commentable
    if parsed_path.size == 2
      @commentable = resource(parsed_path)
    elsif parsed_path.size == 4
      @commentable = resource_child(parsed_path)
    end
  end
end
