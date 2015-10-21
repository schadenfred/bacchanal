class Org < ActiveRecord::Base

  include AddressableConcern
  extend FriendlyId

  resourcify

  friendly_id :name, use: :slugged

  acts_as_tagger

  has_many :articles
  has_many :categories, through: :articles
  has_many :comments, through: :articles
  has_many :positions, as: :positionable

  store_accessor :properties, :history, :mission, :welcome_statement
end
