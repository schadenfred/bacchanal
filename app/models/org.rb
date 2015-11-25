class Org < ActiveRecord::Base

  include AddressableConcern
  extend FriendlyId

  resourcify

  friendly_id :name, use: :slugged

  acts_as_tagger

  has_many :articles
  has_many :galleries, as: :galleriable
  has_many :categories, through: :articles
  has_many :comments, through: :articles
  has_many :identities, as: :identifiable
  has_many :positions
  has_many :photos, as: :photographable

  validates :name, uniqueness: true

  store_accessor :properties, :history, :mission, :welcome_statement

  def default_gallery
    galleries.find_by(name: "default")
  end

  def gallery(name)
    galleries.find_by(name: name)
  end
end
