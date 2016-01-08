class Org < ActiveRecord::Base

  include AddressableConcern
  include CommentableConcern
  include GalleriableConcern
  include IdentifiableConcern
  include PositionableConcern


  extend FriendlyId
  friendly_id :name, use: :slugged
  
  acts_as_tagger
  resourcify

  has_many :articles
  has_many :categories, through: :articles

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def self.types
    %w(Producer)
  end

  # scope :producers, -> { where(type: 'Lion') } 
  
  store_accessor :properties, :history, :mission, :welcome_statement

  def gallery(name)
    galleries.find_by(name: name)
  end

  def self.terms_for(prefix)
    suggestions = where("term like ?", "#{prefix}_%")
    suggestions.order("popularity desc").limit(10).pluck(:term)
  end
end
