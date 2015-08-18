class Article < ActiveRecord::Base

  belongs_to :producer

  has_many :comments, as: :commentable
end
