class Gallery < ActiveRecord::Base

  store_accessor :properties

  belongs_to :galleriable, polymorphic: true

  has_many :photos, through: :slides
  
  accepts_nested_attributes_for :photos

  has_many :slides

  validates :name, presence: true

  validates :galleriable, presence: true

  validates :name, uniqueness: { scope: [:galleriable_id, :galleriable_type] }


end
