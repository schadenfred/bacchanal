class Gallery < ActiveRecord::Base

  store_accessor :properties

  belongs_to :org

  has_many :photos, through: :slides
  has_many :slides

  validates :name, presence: true
  validates :org, presence: true

  validates :name, uniqueness: { scope: :org_id }


end
