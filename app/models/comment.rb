class Comment < ActiveRecord::Base

  # ancestry gem, to allow nested comments
  has_ancestry
  
  # associations
  belongs_to :commentable, polymorphic: true
  belongs_to :commenter, class_name: "User"

  # validations
  validates :commenter, presence: true

  default_scope { order("created_at desc") }

end
