class Article < ActiveRecord::Base

  extend FriendlyId

  friendly_id :title, use: :slugged

  belongs_to :org
  belongs_to :author, class_name: "User", foreign_key: :author_id

  has_many :comments, as: :commentable

  validates :org, presence: true
end
