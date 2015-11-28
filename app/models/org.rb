class Org < ActiveRecord::Base

  include AddressableConcern
  include CommentableConcern
  include GalleriableConcern

  extend FriendlyId

  resourcify

  friendly_id :name, use: :slugged

  acts_as_tagger

  has_many :articles
  has_many :categories, through: :articles
  has_many :comments, as: :commentable
  has_many :identities, as: :identifiable
  has_many :positions

  validates :name, uniqueness: true

  store_accessor :properties, :history, :mission, :welcome_statement

  def gallery(name)
    galleries.find_by(name: name)
  end
end
