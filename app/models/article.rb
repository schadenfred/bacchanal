class Article < ActiveRecord::Base

  belongs_to :org

  has_many :comments, as: :commentable
end
