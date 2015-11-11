class Gallery < ActiveRecord::Base

  store_accessor :properties

  belongs_to :org

  validates :org, presence: true
  validates :name, presence: true

end
