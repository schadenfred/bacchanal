class Article < ActiveRecord::Base

  extend FriendlyId

  friendly_id :title, use: :slugged

  belongs_to :org

  has_many :comments, as: :commentable

  validates :org, presence: true
end
