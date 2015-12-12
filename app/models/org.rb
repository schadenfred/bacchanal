class Org < ActiveRecord::Base

  include AddressableConcern
  include CommentableConcern
  include GalleriableConcern
  include IdentifiableConcern

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  acts_as_tagger
  resourcify

  has_many :articles
  has_many :categories, through: :articles
  has_many :positions

  validates :name, presence: true

  def self.types
    %w(Producer)
  end

  # scope :producers, -> { where(type: 'Lion') } 
  
  store_accessor :properties, :history, :mission, :welcome_statement

  def gallery(name)
    galleries.find_by(name: name)
  end
end
