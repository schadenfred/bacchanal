class Org < ActiveRecord::Base

  extend FriendlyId
  resourcify

  friendly_id :name, use: :slugged

  acts_as_tagger

  store_accessor :properties, :history, :mission
  has_many :addresses_addressables, as: :addressable
  has_many :addresses, through: :addresses_addressables, as: :addressable
  has_many :articles
  has_many :categories, through: :articles
  has_many :comments, through: :articles
  has_many :positions, as: :positionable
end
