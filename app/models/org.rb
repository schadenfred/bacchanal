class Org < ActiveRecord::Base

  extend FriendlyId

  friendly_id :name, use: :slugged

  acts_as_tagger

  has_many :articles
  has_many :comments, through: :articles
end
