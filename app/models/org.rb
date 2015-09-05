class Org < ActiveRecord::Base

  extend FriendlyId

  friendly_id :name, use: :slugged

  acts_as_tagger

  store_accessor :properties, :history, :mission
  has_many :addresses_addressable
  has_many :addresses, through: :addresses_addressable, as: :addressable
  has_many :articles
  has_many :categories, through: :articles
  has_many :comments, through: :articles
  has_many :positions, as: :positionable
end
