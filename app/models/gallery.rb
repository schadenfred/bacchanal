class Gallery < ActiveRecord::Base

  store_accessor :properties

  belongs_to :org

  has_many :slides

  validates :org, presence: true
  validates :name, presence: true

end
